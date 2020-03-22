//
//  OnboardingPageContainerViewController.swift
//  gt-first
//
//  Created by Erick Pac on 3/22/20.
//  Copyright © 2020 Erick Pac. All rights reserved.
//

import UIKit

class OnboardingPageContainerViewController: UIViewController {
    
    var pageController: PageViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareUI()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        if let viewController = segue.destination as? PageViewController, segue.identifier == "onboardingSegue" {
            viewController.orderedViewControllers = []
            viewController.pageChangeDelegate = self
            pageController = viewController
        }
    }
    
    private func prepareUI() {
        
    }
    
}

extension OnboardingPageContainerViewController: PageChangeProtocol {
    
    func pageChange(indexPage: Int) {
        
    }
    
}
