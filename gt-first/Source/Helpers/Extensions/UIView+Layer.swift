//
//  UIView+Layer.swift
//  gt-first
//
//  Created by Erick Pac on 3/22/20.
//  Copyright © 2020 Erick Pac. All rights reserved.
//

import UIKit

extension UIView {
    
    func addShadow(clipsToBounds: Bool = false, color: CGColor, opacity: Float, offset: CGSize, radius: CGFloat = 0) {
        self.clipsToBounds = clipsToBounds
        self.layer.shadowColor = color
        self.layer.shadowOpacity = opacity
        self.layer.shadowOffset = offset
        self.layer.shadowRadius = radius
        self.layer.shouldRasterize = true
        self.layer.rasterizationScale = UIScreen.main.scale
    }
    
}
