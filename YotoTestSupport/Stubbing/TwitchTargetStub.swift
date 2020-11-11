//
//  TwitchTargetStub.swift
//  YotoTests
//
//  Created by Gerald Eersteling on 22/10/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation
import Nimble
import OHHTTPStubs
@testable import YotoKit

struct TwitchTargetStub {
    static let stubHost = isHost(Twitch.baseURL.host!)

    @discardableResult
    static func stubRetrieveAccessToken() -> String {
        let stubName = "Stub for returning an access token for IGDB"
        let path = stubTargetPath(TwitchTarget.retrieveAccessToken)
        let jsonObject = TwitchCredentials(JSONString: """
        {
            "access_token": "\(TwitchSeeds.accessToken)",
            "expires_in": "\(TwitchSeeds.expiresIn)",
            "token_type": "bearer"
        }
        """)!
        stub(condition: stubHost && isPath(path)) { _ in
            HTTPStubsResponse(jsonObject: jsonObject.toJSON(),
                              statusCode: 200,
                              headers: nil)
        }.name = stubName

        return stubName
    }
}
