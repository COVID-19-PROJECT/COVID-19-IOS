//
//  HomeViewController.swift
//  gt-first
//
//  Created by Jordy Gonzalez on 3/23/20.
//  Copyright © 2020 Jordy Gonzalez. All rights reserved.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var viewStatsContainer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareUI()
    }
    
    private func prepareUI() {
        viewStatsContainer.layer.cornerRadius = 5.0
        viewStatsContainer.addShadow(color: UIColor.black.cgColor, opacity: 0.2, offset: .zero, radius: 3.0)
    }
    
}
