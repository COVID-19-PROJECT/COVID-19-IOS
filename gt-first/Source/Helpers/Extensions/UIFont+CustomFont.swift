//
//  UIFont+CustomFont.swift
//  gt-first
//
//  Created by Erick Pac on 3/22/20.
//  Copyright © 2020 Erick Pac. All rights reserved.
//

import UIKit

enum FontWeight: String {
    
    case black
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
        case .black:
            return UIFont.Weight.black
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
    
    static func roboto(size: CGFloat, weight: FontWeight) -> UIFont {
        return UIFont(name: "Roboto-\(weight.name)", size: size)!
    }
    
    static func futura(size: CGFloat, weight: FontWeight) -> UIFont {
        return UIFont(name: "Futura-\(weight.name)", size: size)!
    }
    
}
