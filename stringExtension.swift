//
//  stringExtension.swift
//
//  Created by MAC0008 on 17/01/20.
//  Copyright © 2020 MAC0008. All rights reserved.
//

import UIKit

extension String {
    /*
     ^     #Match the beginning of the string
     [6-9] #Match a 6, 7, 8 or 9
     \\d   #Match a digit (0-9 and anything else that is a "digit" in the regex engine)
     {9}   #Repeat the previous "\d" 9 times (9 digits)
     $     #Match the end of the string
     */
    
    /// Validate Mobile Number
    var isValidContact: Bool {
        let phoneNumberRegex = "^[6-9]\\d{9}$"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", phoneNumberRegex)
        let isValidPhone = phoneTest.evaluate(with: self)
        return isValidPhone
    }
    
    ///To check text field or String is blank or not
    var isBlank: Bool {
        get {
            let trimmed = trimmingCharacters(in: CharacterSet.whitespaces)
            return trimmed.isEmpty
        }
    }
    
    ///To Valid Email Address
    var isValidEmail: Bool {
        // here, `try!` will always succeed because the pattern is valid
        let regex = try! NSRegularExpression(pattern: "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$", options: .caseInsensitive)
        return regex.firstMatch(in: self, options: [], range: NSRange(location: 0, length: count)) != nil
    }
}
