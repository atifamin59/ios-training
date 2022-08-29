//
//  BlackBgView.swift
//  StarTrivia
//
//  Created by Atif Amin on 25/08/2022.
//

import UIKit

class BlackBgView : UIView {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.backgroundColor = BLACK_BG
        layer.cornerRadius = 10
    }
}

class BlackBgButton : UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.backgroundColor = BLACK_BG
        layer.cornerRadius = 10
    }
}
