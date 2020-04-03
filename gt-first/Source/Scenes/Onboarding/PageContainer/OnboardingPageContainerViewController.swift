//
//  OnboardingPageContainerViewController.swift
//  gt-first
//
//  Created by Erick Pac on 3/22/20.
//  Copyright © 2020 Erick Pac. All rights reserved.
//

import UIKit

class OnboardingPageContainerViewController: UIViewController {
    
    @IBOutlet weak var buttonNextPage: UIButton!
    
    private var pageController: PageViewController?
    private var pages: Int = 0
    private var currentPage: Int = 0
    private let presenter = OnboardingPageContainerPresenter(apiManager: APIManager.shared)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.attachView(view: self)
        prepareUI()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        if let viewController = segue.destination as? PageViewController, segue.identifier == "onboardingSegue" {
            let controllers: [UIViewController] = presenter.prepareControllers()
            pages = controllers.count
            viewController.orderedViewControllers = controllers
            viewController.pageChangeDelegate = self
            pageController = viewController
        }
    }
    
    private func prepareUI() {
        
    }
    
    private func changePage(to index: Int) {
        guard let pageControllerInstance = pageController else { return }
        pageControllerInstance.changePage(to: index)
    }
    
    private func updateNextAndFinishButton(indexPage: Int) {
        buttonNextPage.setTitle(indexPage == (pages - 1) ? "FINALIZAR" : "CONTINUAR", for: .normal)
    }
    
    @IBAction func buttonFinishTap(_ sender: Any) {
        if currentPage == (pages - 1) {
            let storyboard = K.Storyboards.Login.value
            let viewController: UIViewController = storyboard.instantiateInitialViewController() ?? UIViewController()
            guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
            appDelegate.setRootViewController(controller: viewController)
        } else {
            currentPage += 1
            updateNextAndFinishButton(indexPage: currentPage)
            changePage(to: currentPage)
        }
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
        currentPage = indexPage
        updateNextAndFinishButton(indexPage: currentPage)
    }
    
}
