//
//  CustomButton.swift
//  Swoosh
//
//  Created by Arghadeep  on 04/01/21.
//

import UIKit

class CustomButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
