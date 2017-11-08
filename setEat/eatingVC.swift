//
//  eatingVC.swift
//  setEat
//
//  Created by life on 2017/11/8.
//  Copyright © 2017年 TT. All rights reserved.
//

import UIKit

class eatingVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.yellow
        let btn = UIButton.init(frame: CGRect.init(x: 20, y: 100, width: 100, height: 100))
        btn.backgroundColor = UIColor.green

        view.addSubview(btn)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
