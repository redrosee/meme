//
//  UIButton+life.swift
//  setEat
//
//  Created by life on 2017/11/8.
//  Copyright © 2017年 TT. All rights reserved.
//

import Foundation
import UIKit
extension UIButton {

    //获取一个文字图片按钮
class func getButton(text:String,imageName:String,action:Selector,fontNum:CGFloat,Alignment:NSTextAlignment)->UIButton{
        let btn = UIButton.init(type: UIButtonType.custom)
        btn.setTitle(text, for: UIControlState.normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: fontNum)
        btn.titleLabel?.textAlignment = Alignment
        if imageName != ""{
            btn.setImage(UIImage.init(named: imageName), for: UIControlState.normal)
            btn.setImage(UIImage.init(named: imageName), for: UIControlState.highlighted)
        }

        btn.addTarget(self, action: action, for: UIControlEvents.touchUpInside)
        return btn
    }
    //纯图片按钮
    class func getButton(vc:UIViewController,imageName:String,selectImageName:String,action:Selector) ->UIButton {
        let btn = UIButton.init(type: UIButtonType.custom)
        btn.setImage(UIImage.init(named: imageName), for: UIControlState.normal)
        btn.setImage(UIImage.init(named: selectImageName), for: UIControlState.selected)
        btn.addTarget(vc, action: action, for: UIControlEvents.touchUpInside)
        return btn
    }


}
