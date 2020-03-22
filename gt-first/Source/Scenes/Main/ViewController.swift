//
//  ViewController.swift
//  gt-first
//
//  Created by Erick Pac on 3/21/20.
//  Copyright © 2020 Erick Pac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var isFirstLaunch: Bool {
        return Storage.Key.launched.valueIs(value: false);
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        requestConfig(then: presentNextScreen())
    }
    
    func presentNextScreen() {
        let board = isFirstLaunch
            ? K.Storyboards.Onboarding.value
            : K.Storyboards.Main.value
        guard let controller = board.instantiateInitialViewController() else {
            fatalError("Could not locate Storyboard controller")
        }
        present(controller, animated: true, completion: nil)
    }
    
    func requestConfig(then next: @autoclosure () -> Void) {
        next()
    }
}

