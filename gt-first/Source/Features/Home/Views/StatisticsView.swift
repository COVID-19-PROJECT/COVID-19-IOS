//
//  StatisticsView.swift
//  gt-first
//
//  Created by Jordy Gonzalez on 3/23/20.
//  Copyright © 2020 Jordy Gonzalez. All rights reserved.
//

import Foundation
import UIKit

class StatisticsView: UIView {
  @IBOutlet weak var statisticsView: UIView!
  
  override func awakeFromNib() {
    super.awakeFromNib()
    statisticsView.layer.cornerRadius = 5
    statisticsView.layer.shadowColor = UIColor.black.cgColor
    statisticsView.layer.shadowOpacity = 0.2
    statisticsView.layer.shadowOffset = CGSize.zero
    statisticsView.layer.shadowRadius = 2
  }
}

