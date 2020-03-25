//
//  EmergencyContactsViewController.swift
//  gt-first
//
//  Created by Erick Pac on 3/22/20.
//  Copyright © 2020 Erick Pac. All rights reserved.
//

import UIKit

class EmergencyContactsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var labelTitle: UILabel!
    
    private let presenter = EmergencyContactsPresenter(apiManager: APIManager.shared)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.attachView(view: self)
        prepareUI()
        prepareTable()
    }
    
    private func prepareUI() {
        view.backgroundColor = .background
    }
    
    private func prepareTable() {
        labelTitle.text = "EmergencyContactsTite".localized.uppercased()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "EmergencyContactCell", bundle: nil), forCellReuseIdentifier: "EmergencyContactCell")
    }
    
}

extension EmergencyContactsViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 110.0
    }
    
}

extension EmergencyContactsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EmergencyContactCell", for: indexPath)
        return cell
    }
    
}

extension EmergencyContactsViewController: EmergencyContactsDelegate {
    
    func showLoader(show: Bool) {
        
    }
    
}
