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
  
  let headerView: StatisticsView? = {
    guard let header = Bundle.main.loadNibNamed("StatisticsView", owner: self, options: nil)?.first as? StatisticsView else {
      return nil
    }
    header.translatesAutoresizingMaskIntoConstraints = false
    return header
  }()

  override func viewDidLoad() {
    super.viewDidLoad()
    if let statistics = headerView {
      view.addSubview(statistics)
      statistics.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
      statistics.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
      statistics.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
      statistics.heightAnchor.constraint(equalToConstant: 120).isActive = true
      statistics.setStatistics(confirmed: "80", actives: "40", recovered: "30", deaths: "10")
    }
  }
}
