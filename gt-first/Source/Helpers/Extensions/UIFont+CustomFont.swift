//
//  UIFont+CustomFont.swift
//  gt-first
//
//  Created by Erick Pac on 3/22/20.
//  Copyright © 2020 Erick Pac. All rights reserved.
//

import UIKit

enum FontWeight: String {
    
    case bold
    case regular
    case light
    case thin
    case semibold
    
    var name: String {
        self.rawValue.capitalized
    }
    
    func native() -> UIFont.Weight {
        switch self {
        case .bold:
            return UIFont.Weight.bold
        case .regular:
            return UIFont.Weight.regular
        case .light:
            return UIFont.Weight.light
        case .thin:
            return UIFont.Weight.thin
        case .semibold:
            return UIFont.Weight.semibold
        }
    }
    
}

extension UIFont {
    
    static func `default`(size: CGFloat, weight: FontWeight) -> UIFont {
        return UIFont(name: "Raleway-\(weight.name)", size: size) ?? UIFont.systemFont(ofSize: size)
    }
    
}
