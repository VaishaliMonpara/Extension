//
//  viewExtension.swift
//
//  Created by MAC0008 on 17/01/20.
//  Copyright © 2020 MAC0008. All rights reserved.
//

import UIKit

extension UIView {
    func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
    
    func setBackgroundColor(Hex: String)
    {
        self.backgroundColor = UIColor.init(hex: Hex)
    }
    
    func roundCorner()
    {
        self.layer.cornerRadius = self.layer.frame.width / 2
    }
}

