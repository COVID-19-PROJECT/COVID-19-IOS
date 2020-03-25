//
//  TextField.swift
//  gt-first
//
//  Created by Jose Quintero on 3/22/20.
//  Copyright © 2020 Erick Pac. All rights reserved.
//

import UIKit

class TextField: UITextField {
    
    @IBInspectable var color: UIColor = .darkGray {
           didSet {
               layoutSubviews()
           }
       }

    override func layoutSubviews() {
        layer.borderColor = color.cgColor
        layer.borderWidth = 2
        layer.cornerRadius = 5
        layer.masksToBounds = true
    }

}
