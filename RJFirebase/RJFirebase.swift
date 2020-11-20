//
//  RJFirebase.swift
//  RJFirebase
//
//  Created by Raja Syahmudin on 20/11/20.
//  Copyright © 2020 Raja Syahmudin. All rights reserved.
//

import Firebase
import FirebaseRemoteConfig
import FirebaseCore
import FirebaseMessaging

final class RJFirebase {
    static let shared = Firebase()
    
    var remoteConfig: RemoteConfig!
    var hasFetchRemoteConfigParameters = false
}

// MARK: Setup
extension RJFirebase {
    func setup() {
        FirebaseApp.configure()
        setRemoteConfig()
    }
}
