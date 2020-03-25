//
//  MainTabBarViewController.swift
//  gt-first
//
//  Created by Erick Pac on 3/22/20.
//  Copyright © 2020 Erick Pac. All rights reserved.
//

import UIKit

class MainTabBarViewController: UITabBarController, UIViewControllerTransitioningDelegate {

    override var modalPresentationStyle: UIModalPresentationStyle {
        get { return .custom } set { }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let storyboard = K.Storyboards.Main.value
        let controller = storyboard.instantiateViewController(withIdentifier: K.ControllerIdentifier.CompleteInformation.rawValue)
        show(controller, sender: nil)
    }
    
}
