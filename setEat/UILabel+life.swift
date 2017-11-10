//
//  UILabel+life.swift
//  setEat
//
//  Created by life on 2017/11/8.
//  Copyright © 2017年 TT. All rights reserved.
//

import Foundation
import UIKit
extension UILabel {
    //取到一个label
   class func getLabel(text:String,font:UIFont,textColor:UIColor,bgColor:UIColor,Alignment:NSTextAlignment,Numline:Int)->UILabel{
        let label = UILabel.init()
        label.text = text
        label.font = font
        label.textColor = textColor
        label.backgroundColor = bgColor
        label.textAlignment = Alignment
        label.numberOfLines = Numline
        return label
    }




}
