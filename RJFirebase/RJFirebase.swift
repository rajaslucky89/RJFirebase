//
//  RJFirebase.swift
//  RJFirebase
//
//  Created by Raja Syahmudin on 20/11/20.
//  Copyright © 2020 Raja Syahmudin. All rights reserved.
//

import FirebaseCore
import FirebaseRemoteConfig

public class RJFirebase {
    public static let shared = RJFirebase()
    public var remoteConfig: RemoteConfig!
    public var hasFetchRemoteConfigParameters = false
}

// MARK: Setup
extension RJFirebase {
    public func setup() {
        FirebaseApp.configure()
        setupRemoteConfig()
    }
}
