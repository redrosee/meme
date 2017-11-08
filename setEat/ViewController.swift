//
//  ViewController.swift
//  setEat
//
//  Created by life on 2017/11/8.
//  Copyright © 2017年 TT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var eatvc:eatingVC? = nil



    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.red
        title = "荷兰"
        navigationController?.navigationBar.alpha = 0.5
        let vc = eatingVC()
        eatvc = vc
         vc.view.frame = CGRect(x: 0, y: 164, width: width, height: height - 64)
        view.addSubview(vc.view)
        addChildViewController(vc)
//        transition(from: self, to: vc, duration: 1.0, options: UIViewAnimationOptions.transitionFlipFromBottom, animations: {
//
//        }) { (re:Bool) in
//
//        }

//         transitionFromViewController:toViewController:duration:options:animations:completion
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        let vc = eatingVC()
//        vc.view.frame = CGRect(x: 0, y: 164, width: width, height: height - 64)
////        self.present(vc, animated: true, completion: nil)
//        addChildViewController(vc)
//        eatvc?.removeFromParentViewController()
        eatvc?.view.removeFromSuperview()



    }


}

