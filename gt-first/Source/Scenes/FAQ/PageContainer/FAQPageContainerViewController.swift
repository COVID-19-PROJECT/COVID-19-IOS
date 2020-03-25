//
//  FAQPageContainerViewController.swift
//  gt-first
//
//  Created by Erick Pac on 3/24/20.
//  Copyright © 2020 Erick Pac. All rights reserved.
//

import UIKit

class FAQPageContainerViewController: UIViewController {
    
    @IBOutlet weak var buttonRecommendations: UIButton!
    @IBOutlet weak var buttonCommunications: UIButton!
    @IBOutlet weak var viewRecommendations: UIView!
    @IBOutlet weak var viewCommunications: UIView!
    @IBOutlet weak var viewButtons: UIView!
    
    var pageController: PageViewController?
    private let presenter = FAQPageContainerPresenter(apiManager: APIManager.shared)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.attachView(view: self)
        prepareUI()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        if let viewController = segue.destination as? PageViewController, segue.identifier == "faqPagesSegue" {
            viewController.orderedViewControllers = presenter.prepareControllers()
            viewController.pageChangeDelegate = self
            pageController = viewController
        }
    }
    
    private func prepareUI() {
        view.backgroundColor = .background
        viewButtons.addShadow(color: UIColor.gray.cgColor, opacity: 0.2, offset: CGSize(width: 0.0, height: 3.0), radius: 3.0)
        buttonCommunications.setTitleColor(.textDisable, for: .normal)
        buttonCommunications.alpha = 0.54
        viewCommunications.isHidden = true
    }
    
    @IBAction func recommendationsButtonTap(_ sender: Any) {
        changePage(indexPage: 0)
        configurePageChange(indexPage: 0)
    }
    
    @IBAction func communicationsButtonTap(_ sender: Any) {
        changePage(indexPage: 1)
        configurePageChange(indexPage: 1)
    }
    
    private func changePage(indexPage: Int) {
        guard let pageControllerInstance = pageController else { return }
        pageControllerInstance.changePage(to: indexPage)
    }
    
    internal func configurePageChange(indexPage: Int) {
        UIView.animate(withDuration: 0.3) {
            if indexPage == 0 {
                self.buttonRecommendations.alpha = 1.0
                self.buttonRecommendations.setTitleColor(.textBlue, for: .normal)
                self.viewRecommendations.isHidden = false
                self.buttonCommunications.alpha = 0.54
                self.buttonCommunications.setTitleColor(.textDisable, for: .normal)
                self.viewCommunications.isHidden = true
            } else {
                self.buttonRecommendations.alpha = 0.54
                self.buttonRecommendations.setTitleColor(.textDisable, for: .normal)
                self.viewRecommendations.isHidden = true
                self.buttonCommunications.alpha = 1.0
                self.buttonCommunications.setTitleColor(.textBlue, for: .normal)
                self.viewCommunications.isHidden = false
            }
        }
    }
    
    deinit {
        presenter.detachView()
    }
    
}

extension FAQPageContainerViewController: FAQPageContainerProtocol {
    
    func showLoader(show: Bool) {
        
    }
    
}

extension FAQPageContainerViewController: PageChangeProtocol {
    
    func pageChange(indexPage: Int) {
        configurePageChange(indexPage: indexPage )
    }
    
}

