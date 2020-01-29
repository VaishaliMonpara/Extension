//
//  extension.swift
//  BaseStructure
//
//  Created by VaishaliMonpara on 20/09/19.
//  Copyright © 2019 MAC0008. All rights reserved.
//

import UIKit

extension UIApplication {
    var statusBarView: UIView? {
        if responds(to: Selector(("statusBar"))) {
            return value(forKey: "statusBar") as? UIView
        }
        return nil
    }
}



