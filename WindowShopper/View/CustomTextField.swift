//
//  CustomTextField.swift
//  WindowShopper
//
//  Created by Tushar Katyal on 17/08/17.
//  Copyright © 2017 Tushar Katyal. All rights reserved.
//

import UIKit
// @IBDesignable
class CustomTextField: UITextField {

//   override func prepareForInterfaceBuilder() {
//        customizeView()
//    }
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
       
    }
    func customizeView() {
        //xcode 9 update
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2478431748)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        if let p = placeholder {
            
            let place = NSAttributedString(string: p, attributes: [.foregroundColor : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}
