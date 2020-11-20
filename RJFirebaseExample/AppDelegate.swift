//
//  AppDelegate.swift
//  RJFirebaseExample
//
//  Created by Raja Syahmudin on 20/11/20.
//  Copyright © 2020 Raja Syahmudin. All rights reserved.
//

import UIKit
import Firebase
import RJFirebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // Setup firebase
        FirebaseApp.configure()
        RJFirebase.shared.setup()
        
        return true
    }
    
    
}

