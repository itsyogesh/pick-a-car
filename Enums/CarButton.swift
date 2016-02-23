//
//  CarButton.swift
//  Enums
//
//  Created by Yogesh Kumar on 23/02/16.
//  Copyright © 2016 itsyogesh. All rights reserved.
//

import UIKit

class CarButton: UIButton {
    
    let bgImage = UIImage.fromColor(convertRgbToColor(62, green: 164, blue: 169))
    
    override func awakeFromNib() {
        setBackgroundImage(bgImage, forState: .Selected)
    }
    
    
}

extension UIImage {
    static func fromColor(color: UIColor) -> UIImage {
        let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        CGContextSetFillColorWithColor(context, color.CGColor)
        CGContextFillRect(context, rect)
        let img = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return img
    }
}


    
func convertRgbToColor(red: Int, green: Int, blue: Int) -> UIColor {
        let color = UIColor(red: CGFloat(red)/255.0, green: CGFloat(green)/255.0, blue: CGFloat(blue)/255.0, alpha: 1.0)
        return color
    }