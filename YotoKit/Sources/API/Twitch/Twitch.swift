//
//  Twitch.swift
//  Yoto
//
//  Created by Gerald Eersteling on 27/10/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation

/**
 OAuth struct based on Twitch's requirements.
 - Todo: Implement a real OAuth solution, complete with a system to automatically refresh the
 access token when it expires. _For now_ we're using a generated access token which we manually refresh and
 store in the SecureStore.
 **/
struct Twitch {
    static let baseURL = URL(string: "https://id.twitch.tv")!
    static let redirectURL = URL(string: "yoto://igdb-oauth-callback")!

    /// Passed to authorization endpoints to identify this application
    static let clientID = "4roijh4s3pl3wsqwpykowomq2a05zo"
    static let clientIDHeader = ["Client-ID": clientID]

    /// Passed to the token exchange endpoints to obtain a token. You must keep this confidential.
    /// - Important: The client secret **should never be revealed or comitted**, but should rather be generated
    ///              using something like 'mustache' using CI/CD etc. In any case; the secret should be supplied
    ///              to the app when it's being compiled.
    static let clientSecret = "f1gftjtoh41sa3l6kv6f8yqov6l8km"

    static let grantType = "client_credentials"
}
