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
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        return true
    }
    
    func setRootViewController(controller: UIViewController ) {
        guard let window: UIWindow = window else { return }
        
        window.frame = UIScreen.main.bounds
        window.rootViewController = controller
        window.makeKeyAndVisible()
        
        UIView.transition(with: window, duration: 0.2, options: .transitionCrossDissolve, animations: nil) { completed in
            
        }
    }

}
