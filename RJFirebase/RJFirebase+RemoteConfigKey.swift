//
//  RJFirebase+RemoteConfigKey.swift
//  RJFirebase
//
//  Created by Raja Syahmudin on 20/11/20.
//  Copyright © 2020 Raja Syahmudin. All rights reserved.
//

import Firebase

extension RJFirebase {
    enum RemoteConfigKey: String, CaseIterable {
        case message = "message"
        
        var identifier: String { return rawValue }
        var defaultValue: String {
            switch self {
            case .messaage: return "Hello, My name is raja syahmudin..."
            }
        }
        
        static var allKeyWithDefaultValue: [String: NSObject] {
            let values = allCases.reduce([String: String]()) { result, value in
                var newResult = result
                newResult[value.identifier] = value.defaultValue
                return newResult
            }
            return values as [String: NSObject]
        }
    }
}
