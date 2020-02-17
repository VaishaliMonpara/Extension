//
//  imageExtension.swift
//
//  Created by MAC0008 on 17/01/20.
//  Copyright © 2020 MAC0008. All rights reserved.
//

import UIKit

public extension UIImageView {
    
    func roundImage() {
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.layer.masksToBounds = false
        self.layer.cornerRadius = self.frame.height/2
        self.clipsToBounds = true
    }
    
    func setRoundCorner(cornertRadius: CGFloat)
    {
        self.layer.cornerRadius = cornertRadius
    }
    
    func setTintColor(color: UIColor)
    {
        self.tintColor = color
        self.image = self.image?.withRenderingMode(.alwaysTemplate)
    }
}

extension UIImage {
    func rotate(radians: CGFloat) -> UIImage {
        let rotatedSize = CGRect(origin: .zero, size: size)
            .applying(CGAffineTransform(rotationAngle: CGFloat(radians)))
            .integral.size
        UIGraphicsBeginImageContext(rotatedSize)
        if let context = UIGraphicsGetCurrentContext() {
            let origin = CGPoint(x: rotatedSize.width / 2.0,
                                 y: rotatedSize.height / 2.0)
            context.translateBy(x: origin.x, y: origin.y)
            context.rotate(by: radians)
            draw(in: CGRect(x: -origin.y, y: -origin.x,
                            width: size.width, height: size.height))
            let rotatedImage = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
            
            return rotatedImage ?? self
        }
        
        return self
    }
}

