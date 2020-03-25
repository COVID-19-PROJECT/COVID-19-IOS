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
    private let presenter = OnboardingPageContainerPresenter(apiManager: APIManager.shared)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.attachView(view: self)
        prepareUI()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        if let viewController = segue.destination as? PageViewController, segue.identifier == "onboardingSegue" {
            let controllers: [UIViewController] = presenter.prepareControllers()
            viewController.orderedViewControllers = controllers
            viewController.pageChangeDelegate = self
            pageController = viewController
        }
    }
    
    private func prepareUI() {
        
    }
    
    deinit {
        presenter.detachView()
    }
    
}

extension OnboardingPageContainerViewController: OnboardingPageContainerDelegate {
    
    func showLoader(show: Bool) {
        
    }
    
}

extension OnboardingPageContainerViewController: PageChangeProtocol {
    
    func pageChange(indexPage: Int) {
        
    }
    
}
