//
//  RJFirebase+RemoteConfig.swift
//  RJFirebase
//
//  Created by Raja Syahmudin on 20/11/20.
//  Copyright © 2020 Raja Syahmudin. All rights reserved.
//

import FirebaseRemoteConfig

// MARK: Public
extension RJFirebase {
    public func setupRemoteConfig() {
        remoteConfig = RemoteConfig.remoteConfig()

        let settings = RemoteConfigSettings()
        settings.minimumFetchInterval = 0
        remoteConfig.configSettings = settings
        setAllKeyDefaultValue()
        fetchAndActivateAllKeyValues()
    }
    
    public func getString(ofKey key: RemoteConfigKey) -> String {
        return remoteConfig.configValue(forKey: key.identifier).stringValue ?? ""
    }
}

// MARK: Public
extension RJFirebase {
    public func setAllKeyDefaultValue() {
        remoteConfig.setDefaults(RemoteConfigKey.allKeyWithDefaultValue)
    }
}
