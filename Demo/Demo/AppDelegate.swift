//
//  AppDelegate.swift
//  Demo
//
//  Created by Tim Moose on 8/11/16.
//  Copyright © 2016 SwiftKick Mobile. All rights reserved.
//

import UIKit
import SwiftMessages

let brandColor = UIColor(red: 42/255.0, green: 168/255.0, blue: 250/255.0, alpha: 1)

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        let sot = CallSot()
        sot.initSot()
        
        let sot1 = CallSotMessage()
        sot1.initSot()
        
        window?.tintColor = brandColor
        UISwitch.appearance().onTintColor = brandColor
        return true
    }
}

