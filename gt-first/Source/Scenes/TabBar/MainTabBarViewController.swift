//
//  MainTabBarViewController.swift
//  gt-first
//
//  Created by Erick Pac on 3/22/20.
//  Copyright © 2020 Erick Pac. All rights reserved.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        prepareUI()
    }
    
    private func prepareUI() {
        tabBar.isTranslucent = false
        tabBar.barTintColor = .mainBlue
        tabBar.tintColor = .white
        tabBar.unselectedItemTintColor = .unselectedBarItem
    }
    
}
