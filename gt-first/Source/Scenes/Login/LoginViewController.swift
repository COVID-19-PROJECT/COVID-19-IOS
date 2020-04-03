//
//  LoginViewController.swift
//  gt-first
//
//  Created by Erick Pac on 3/25/20.
//  Copyright © 2020 Erick Pac. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var buttonRegister: Button!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .default
    }
    
    @IBAction func buttonRegisterTap(_ sender: Any) {
        let storyboard = K.Storyboards.Main.value
        let viewController: UIViewController = storyboard.instantiateInitialViewController() ?? UIViewController()
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        appDelegate.setRootViewController(controller: viewController)
    }
    
}
