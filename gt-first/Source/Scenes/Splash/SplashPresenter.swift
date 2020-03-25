//
//  SplashPresenter.swift
//  gt-first
//
//  Created by Erick Pac on 3/22/20.
//  Copyright © 2020 Erick Pac. All rights reserved.
//

import UIKit

class SplashPresenter {
    
    private weak var view: SplashDelegate?
    private var apiManager: APIManager
    var isFirstLaunch: Bool {
        return Storage.Key.launched.valueIs(value: false);
    }
    
    init(apiManager: APIManager) {
        self.apiManager = apiManager
    }
    
    func attachView(view: SplashDelegate) {
        self.view = view
    }
    
    func detachView() {
        view = nil
    }
    
    func requestConfig() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            let board = !self.isFirstLaunch
                ? K.Storyboards.Onboarding.value
                : Authentication.default.isAuthenticated
                    ? K.Storyboards.Main.value
                    : K.Storyboards.Login.value
            
            guard let controller = board.instantiateInitialViewController() else {
                fatalError("Could not locate Storyboard controller")
            }
            
            self.view?.loadNextView(controller: controller)
        }
    }
    
}

