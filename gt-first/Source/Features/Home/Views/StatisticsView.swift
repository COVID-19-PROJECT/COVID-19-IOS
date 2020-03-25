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
  @IBOutlet weak var confirmedLabel: UILabel!
  @IBOutlet weak var activeLabel: UILabel!
  @IBOutlet weak var recoveredLabel: UILabel!
  @IBOutlet weak var deathLabel: UILabel!
  
  override func awakeFromNib() {
    super.awakeFromNib()
    statisticsView.layer.cornerRadius = 5
    statisticsView.layer.shadowColor = UIColor.black.cgColor
    statisticsView.layer.shadowOpacity = 0.2
    statisticsView.layer.shadowOffset = CGSize.zero
    statisticsView.layer.shadowRadius = 2
    setStatistics(confirmed: "0", actives: "0", recovered: "0", deaths: "0")
  }
  
  func setStatistics(confirmed: String,
                     actives: String,
                     recovered: String,
                     deaths: String) {
    let confirmedTxt = "Confirmados\n"
    let activesTxt = "Activos\n"
    let recoveredTxt = "Recuperados\n"
    let deathsTxt = "Muertes\n"
    
    let titleAttribute = [ NSAttributedString.Key.font: UIFont.systemFont(ofSize: 10), NSAttributedString.Key.foregroundColor: UIColor(hex: 0x3A3F50) ]
    
    let statistic1Attribute = [ NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 34), NSAttributedString.Key.foregroundColor: UIColor(hex: 0xD40000)]
    let statistic2Attribute = [ NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 34), NSAttributedString.Key.foregroundColor: UIColor(hex: 0x279700)]
    let statistic3Attribute = [ NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 34), NSAttributedString.Key.foregroundColor: UIColor(hex: 0xFFAA00)]
    let statistic4Attribute = [ NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 34), NSAttributedString.Key.foregroundColor: UIColor(hex: 0x6B6B6B)]
    
    let confirmedAttributedText = NSMutableAttributedString(string: confirmedTxt, attributes: titleAttribute )
    confirmedAttributedText.append(NSMutableAttributedString(string: confirmed, attributes: statistic1Attribute ))
    
    let activeAttributedText = NSMutableAttributedString(string: activesTxt, attributes: titleAttribute )
     activeAttributedText.append(NSMutableAttributedString(string: actives, attributes: statistic2Attribute ))
    
    let recoveredAttributedText = NSMutableAttributedString(string: recoveredTxt, attributes: titleAttribute )
     recoveredAttributedText.append(NSMutableAttributedString(string: recovered, attributes: statistic3Attribute ))
    
    let deathsAttributedText = NSMutableAttributedString(string: deathsTxt, attributes: titleAttribute )
     deathsAttributedText.append(NSMutableAttributedString(string: deaths, attributes: statistic4Attribute ))
    
    confirmedLabel.attributedText = confirmedAttributedText
    activeLabel.attributedText = activeAttributedText
    recoveredLabel.attributedText = recoveredAttributedText
    deathLabel.attributedText = deathsAttributedText
  }

}

extension UIColor {
    convenience init(hex: Int) {
        let components = (
            R: CGFloat((hex >> 16) & 0xff) / 255,
            G: CGFloat((hex >> 08) & 0xff) / 255,
            B: CGFloat((hex >> 00) & 0xff) / 255
        )
        self.init(red: components.R, green: components.G, blue: components.B, alpha: 1)
    }
}

extension CGColor {
  class func colorWithHex(hex: Int) -> CGColor {
    return UIColor(hex: hex).cgColor
  }
}

