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
}

