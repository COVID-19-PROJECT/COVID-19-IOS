//
//  AppDelegate.swift
//  gt-first
//
//  Created by Erick Pac on 3/21/20.
//  Copyright © 2020 Erick Pac. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    var isFirstLaunch: Bool {
        return Storage.Key.launched.valueIs(value: false);
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow()
        let board = isFirstLaunch
            ? K.Storyboards.Onboarding.value
            : K.Storyboards.Main.value;
        window.rootViewController = board.instantiateInitialViewController()
        window.makeKeyAndVisible()
        return true
    }

}
