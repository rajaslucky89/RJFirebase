//
//  RJFirebase+RemoteConfig.swift
//  RJFirebase
//
//  Created by Raja Syahmudin on 20/11/20.
//  Copyright © 2020 Raja Syahmudin. All rights reserved.
//

import Firebase
import FirebaseRemoteConfig

// MARK: Public
extension RJFirebase {
    func setRemoteConfig() {
        remoteConfig = RemoteConfig.remoteConfig()

        let settings = RemoteConfigSettings()
        settings.minimumFetchInterval = 0
        remoteConfig.configSettings = settings
        setAllKeyDefaultValue()
        fetchAndActivateAllKeyValues()
    }
    
    func getString(ofKey key: RemoteConfigKey) -> String {
        return remoteConfig.configValue(forKey: key.identifier).stringValue ?? ""
    }
}

// MARK: Private
private extension RJFirebase {
    func setAllKeyDefaultValue() {
        remoteConfig.setDefaults(RemoteConfigKey.allKeyWithDefaultValue)
    }
}
