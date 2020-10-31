//
//  IGDB.swift
//  Yoto
//
//  Created by Gerald Eersteling on 03/08/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation
import Moya
import RxSwift
import YotoUIKit

/**
 A class which retains and manages connection info to IGDB.
 - Warning: IGDB changed their policy—it's now **required** to have a Twitch account to use their API.
            For now we'll comply, but we now need to think about implementing a proper OAuth system to auto. refresh
            this token.
 */
public class IGDB {
    static let baseURL = URL(string: "https://api.igdb.com/v4")!

    private let disposeBag = DisposeBag()
    private let twitchProvider = MoyaProvider<TwitchTarget>(plugins: [NetworkLoggerPlugin()])

    private(set) public var accessToken: String = ""

    // TODO: For now we'll accept the side-effect that the object automatically performs certain tasks
    //       such as fetching the access token
    public init() {
        setup()
    }
}

// MARK: - Private functions -

extension IGDB {

    private func setup() {
        // If we already have a token, return it
        if let token = getAccessTokenFromKeychain() {
            accessToken = token
        }
        // Otherwise request a new token from Twitch, store it in the keychain
        // and finally publish it to subscribers as well
        else {
            self.fetchAccessTokenFromTwitch()
                .subscribe {
                    self.storeAccessTokenToKeychain($0)
                    self.accessToken = $0
                } onError: {
                    // TODO: If this happens it means that the app is unusable—and fixing it is also not an option
                    //       for the user. A new client_id and client_secret need to be generated for Yoto in Twitch.
                    fatalError("An error occurred while trying to fetch the accesstoken: \($0)")
                }
                .disposed(by: self.disposeBag)
        }
    }

    private func getAccessTokenFromKeychain() -> String? {
        guard
            let tokenData = try? Keychain.retrieveItem(forAttributes: IGDBKeychainAttributes.OAuth()),
            let token = String(data: tokenData, encoding: .utf8)
        else { return nil }

        return token
    }

    private func storeAccessTokenToKeychain(_ token: String) {
        guard let tokenData = token.data(using: .utf8)
        else { return }

        try? Keychain.store(tokenData,
                            withAttributes: IGDBKeychainAttributes.OAuth())
    }

    private func fetchAccessTokenFromTwitch() -> Maybe<String> {
        return twitchProvider.rx
            .request(.retrieveAccessToken)
            .retry(2)
            .mapObject(TwitchCredentials.self)
            .map { $0.access_token }
            .compactMap { $0 }
    }
}
