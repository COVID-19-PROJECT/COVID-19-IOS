//
//  OnboardingStep4ViewController.swift
//  gt-first
//
//  Created by Erick Pac on 3/25/20.
//  Copyright © 2020 Erick Pac. All rights reserved.
//

import UIKit

class OnboardingStep4ViewController: UIViewController {

    @IBOutlet weak var buttonFinish: Button!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareUI()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    private func prepareUI() {
        
    }

    @IBAction func buttonFinishTap(_ sender: Any) {
        let storyboard = K.Storyboards.Login.value
        let viewController: UIViewController = storyboard.instantiateInitialViewController() ?? UIViewController()
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        appDelegate.setRootViewController(controller: viewController)
    }
    
}
