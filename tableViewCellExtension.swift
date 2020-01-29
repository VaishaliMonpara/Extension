//
//  tableViewCellExtension.swift
//
//  Created by MAC0008 on 17/01/20.
//  Copyright © 2020 MAC0008. All rights reserved.
//

import UIKit

public extension UITableViewCell {
    /// Generated cell identifier derived from class name
    static func cellIdentifier() -> String {
        return String(describing: self)
    }
}
