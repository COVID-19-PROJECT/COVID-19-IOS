//
//  SplashViewController.swift
//  gt-first
//
//  Created by Erick Pac on 3/21/20.
//  Copyright © 2020 Erick Pac. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {
    
    private let presenter = SplashPresenter(apiManager: APIManager.shared)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.attachView(view: self)
        presenter.requestConfig()
    }
    
    private func prepareUI() {
        
    }
    
}

extension SplashViewController: SplashDelegate {
    
    func loadNextView(controller: UIViewController) {
        guard let appDelegate: AppDelegate = UIApplication.shared.delegate as? AppDelegate else {
            fatalError("Could not get app delegate instance")
        }
        
        appDelegate.setRootViewController(controller: controller)
    }
    
}

