//
//  EmergencyContactsPresenter.swift
//  gt-first
//
//  Created by Erick Pac on 3/22/20.
//  Copyright © 2020 Erick Pac. All rights reserved.
//

import Foundation

class EmergencyContactsPresenter {
    
    private weak var view: EmergencyContactsDelegate?
    private var apiManager: APIManager
    
    init(apiManager: APIManager) {
        self.apiManager = apiManager
    }
    
    func attachView(view: EmergencyContactsDelegate) {
        self.view = view
    }
    
    func detachView() {
        view = nil
    }
}
