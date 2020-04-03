//
//  Button.swift
//  gt-first
//
//  Created by Jose Quintero on 3/22/20.
//  Copyright © 2020 Erick Pac. All rights reserved.
//

import UIKit

class Button: UIButton {
    
    @IBInspectable var icon: UIImage = UIImage() {
        didSet {
            layoutSubviews()
        }
    }
    
    @IBInspectable var isPrimary: Bool = true {
        didSet {
            layoutSubviews()
        }
    }
    
    @IBInspectable var isRounded: Bool = false {
        didSet {
            layoutSubviews()
        }
    }
    
    @IBInspectable var color: UIColor = .darkGray {
        didSet {
            layoutSubviews()
        }
    }
    
    @IBInspectable var textColor: UIColor = .white {
        didSet {
            layoutSubviews()
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.borderColor = color.cgColor
        layer.borderWidth = 2
        layer.cornerRadius = isRounded ? (layer.bounds.height / 2) : 5
        layer.masksToBounds = true
        backgroundColor = isPrimary ? color : .clear
        setTitleColor(isPrimary ? textColor : color, for: .normal)
        
        if isRounded {
            setImage(icon, for: .normal)
        }
    }
    
}
