//
//  Constants.swift
//  gt-first
//
//  Created by Jose Quintero on 3/22/20.
//  Copyright © 2020 Erick Pac. All rights reserved.
//

import Foundation
import UIKit

public struct K {
    enum Storyboards: String {
        case Main = "Main"
        case Onboarding = "Onboarding"
        case Splash = "Splash"
        
        var value: UIStoryboard {
            return  UIStoryboard(name: self.rawValue, bundle: nil)
        }
    }
}
