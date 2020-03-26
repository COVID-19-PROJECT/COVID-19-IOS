//
//  OnboardingStep2ViewController.swift
//  gt-first
//
//  Created by Erick Pac on 3/22/20.
//  Copyright © 2020 Erick Pac. All rights reserved.
//

import UIKit

class OnboardingStep2ViewController: UIViewController {

    @IBOutlet weak var buttonNext: Button!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareUI()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    private func prepareUI() {
        
    }
    
    @IBAction func buttonNextTap(_ sender: Any) {
    
    }
    
}
