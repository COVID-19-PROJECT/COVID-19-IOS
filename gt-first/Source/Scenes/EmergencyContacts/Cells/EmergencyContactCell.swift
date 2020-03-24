//
//  EmergencyContactCell.swift
//  gt-first
//
//  Created by Erick Pac on 3/22/20.
//  Copyright © 2020 Erick Pac. All rights reserved.
//

import UIKit

class EmergencyContactCell: UITableViewCell {
    
    @IBOutlet weak var viewContainer: UIView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelPhone: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        prepareUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    private func prepareUI() {
        selectionStyle = .none
        viewContainer.layer.cornerRadius = 5
        viewContainer.addShadow(color: UIColor.black.cgColor, opacity: 0.2, offset: .zero, radius: 3)
    }
    
}
