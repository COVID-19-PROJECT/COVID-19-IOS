//
//  FAQPageContainerPresenter.swift
//  gt-first
//
//  Created by Erick Pac on 3/24/20.
//  Copyright © 2020 Erick Pac. All rights reserved.
//

import UIKit

class FAQPageContainerPresenter {
    private weak var view: FAQPageContainerProtocol?
    private var apiManager: APIManager
    
    init(apiManager: APIManager) {
        self.apiManager = apiManager
    }
    
    func attachView(view: FAQPageContainerProtocol) {
        self.view = view
    }
    
    func detachView() {
        view = nil
    }
    
    func prepareControllers() -> [UIViewController] {
        let storyBoard: UIStoryboard = K.Storyboards.FAQ.value
        
        return [
            storyBoard.instantiateViewController(withIdentifier: "FAQRecommendationsView"),
            storyBoard.instantiateViewController(withIdentifier: "FAQCommunicationsView")
        ]
    }
}
