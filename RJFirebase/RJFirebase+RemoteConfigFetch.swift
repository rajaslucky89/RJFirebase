//
//  RJFirebase+RemoteConfigFetch.swift
//  RJFirebase
//
//  Created by Raja Syahmudin on 20/11/20.
//  Copyright © 2020 Raja Syahmudin. All rights reserved.
//

import Firebase

extension RJFirebase {
    private var fetchExpiredDuration: TimeInterval {
        // expired duration set how long value will be cached in second.
        return 0
    }
    
    func fetchAndActivateAllKeyValues() {
        remoteConfig?.fetch(withExpirationDuration: fetchExpiredDuration, completionHandler: { (status, error) in
            self.remoteConfig.activate(completion: nil)
        })
    }
}
