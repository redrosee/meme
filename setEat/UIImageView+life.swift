//
//  UIImageView+life.swift
//  setEat
//
//  Created by life on 2017/11/8.
//  Copyright © 2017年 TT. All rights reserved.
//

import Foundation
import UIKit

extension UIImageView {

    class func getImageView(imageName:String)->UIImageView{
        let imageView = UIImageView.init(image: UIImage.init(named: imageName))
        return imageView
    }

//     //获取一个imageview
//      class  func getImageView(imageName:String,isRadius:Bool,cornerRadiusFloat:CGFloat,imageTye:ImageNameType)->UIImageView{
//        let imageView = UIImageView.init()
//        if isRadius == true {
//            imageView.layer.masksToBounds = true
//            imageView.layer.cornerRadius = cornerRadiusFloat
//        }
//        if imageTye == ImageNameType.strURL{
//            imageView.sd_setImageWithURL(NSURL(string:imageName), placeholderImage: UIImage(named: "koalac_no_avatar"))
//        }else if imageTye == ImageNameType.localImage{
//            imageView.image = UIImage.init(named:imageName)
//        }
//        return imageView
//    }

}
