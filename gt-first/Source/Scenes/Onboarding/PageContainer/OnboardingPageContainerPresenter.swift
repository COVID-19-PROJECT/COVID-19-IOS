//
//  OnboardingPageContainerPresenter.swift
//  gt-first
//
//  Created by Erick Pac on 3/22/20.
//  Copyright © 2020 Erick Pac. All rights reserved.
//

import UIKit

class OnboardingPageContainerPresenter {
    
    private weak var view: OnboardingPageContainerDelegate?
    private var apiManager: APIManager
    
    init(apiManager: APIManager) {
        self.apiManager = apiManager
    }
    
    func attachView(view: OnboardingPageContainerDelegate) {
        self.view = view
    }
    
    func detachView() {
        view = nil
    }
    
    func prepareControllers() -> [UIViewController] {
        let storyBoard: UIStoryboard = K.Storyboards.Onboarding.value
        
        return [
            storyBoard.instantiateViewController(withIdentifier: "OnboardingStep1View"),
            storyBoard.instantiateViewController(withIdentifier: "OnboardingStep2View"),
            storyBoard.instantiateViewController(withIdentifier: "OnboardingStep3View"),
            storyBoard.instantiateViewController(withIdentifier: "OnboardingStep4View")
        ]
    }
    
}
