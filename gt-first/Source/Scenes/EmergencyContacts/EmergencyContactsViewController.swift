//
//  EmergencyContactsViewController.swift
//  gt-first
//
//  Created by Erick Pac on 3/22/20.
//  Copyright © 2020 Erick Pac. All rights reserved.
//

import UIKit

class EmergencyContactsViewController: UIViewController {
    
    private let presenter = EmergencyContactsPresenter(apiManager: APIManager.shared)

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.attachView(view: self)
    }

}

extension EmergencyContactsViewController: EmergencyContactsDelegate {
    
    func showLoader(show: Bool) {
        
    }
    
}
