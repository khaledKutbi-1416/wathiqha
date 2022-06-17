//
//  Colors.swift
//  Wathiqha
//
//  Created by Khaled Kutbi on 15/08/1443 AH.
//

import Foundation
import UIKit

enum Colors {
    case splashBackground
    case splashTitle
}

extension Colors {
    var value: UIColor {
        get {
            switch self {
            case .splashBackground:
                return UIColor(rgb: 0x00CC00)
            case .splashTitle:
            return UIColor(rgb: 0xFFFFFF)
            }
        }
    }
    
}

func UIColorFromRGB(_ rgbValue: Int) -> UIColor! {
    return UIColor(
        red: CGFloat((Float((rgbValue & 0xff0000) >> 16)) / 255.0),
        green: CGFloat((Float((rgbValue & 0x00ff00) >> 8)) / 255.0),
        blue: CGFloat((Float((rgbValue & 0x0000ff) >> 0)) / 255.0),
        alpha: 1.0)
}

extension UIColor {
   convenience init(red: Int, green: Int, blue: Int) {
       assert(red >= 0 && red <= 255, "Invalid red component")
       assert(green >= 0 && green <= 255, "Invalid green component")
       assert(blue >= 0 && blue <= 255, "Invalid blue component")

       self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
   }

   convenience init(rgb: Int) {
       self.init(
           red: (rgb >> 16) & 0xFF,
           green: (rgb >> 8) & 0xFF,
           blue: rgb & 0xFF
       )
   }
}
