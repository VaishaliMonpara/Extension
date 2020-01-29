//
//  navigationControllerExtension.swift
//
//  Created by MAC0008 on 17/01/20.
//  Copyright © 2020 MAC0008. All rights reserved.
//

import UIKit

public extension UINavigationController {
    
    func hideNavigationBar(isHidden: Bool,title: String) {
        self.navigationBar.isHidden = isHidden
        self.navigationItem.title = title
        //self.navigationBar.topItem?.title = title
        if isHidden == false
        {
            self.navigationBar.setGrediantNavBar()
            self.navigationBar.tintColor = UIColor.white
            self.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
            // self.navigationItem.backBarButtonItem?.setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "Poppins", size: 20.0)!], for: UIControl.State.normal)
        }
    }
}


public extension UINavigationBar {
    func setGrediantNavBar()
    {
        let gradientLayer = CAGradientLayer()
        var updatedFrame = self.bounds
        updatedFrame.size.height += 20
        gradientLayer.frame = updatedFrame
        gradientLayer.colors = [UtilColor().getAppStartGredientColor().cgColor, UtilColor().getAppEndGredientColor().cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        
        UIGraphicsBeginImageContext(gradientLayer.bounds.size)
        gradientLayer.render(in: UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        self.setBackgroundImage(image, for: UIBarMetrics.default)
    }
}

