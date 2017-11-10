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
    var navMyBtn:UIButton? = nil
    var navMerchantsBtn:UIButton? = nil
    var navInformationBtn:UIButton? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        setNavUI()
    }


    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let vc = eatingVC()
        self.eatvc = vc
        vc.view.frame = CGRect(x: 0, y: height, width: width, height: height - 64)
        UIView.animate(withDuration: 0.5, animations: {
            self.eatvc?.view.frame = CGRect(x: 0, y: 164, width: width, height: height - 64)
            self.view.addSubview(vc.view)
            self.addChildViewController(vc)
        }) { (re:Bool) in

        }


    }


}
extension ViewController {//设置导航栏
    func setNavUI(){
        view.backgroundColor = UIColor.white
        navigationController?.navigationBar.alpha = 0.5

        let titleview = UIView()
        titleview.frame = CGRect.init(x: 0, y: 0, width: 180, height: 30)
        titleview.backgroundColor = UIColor.yellow
        navMyBtn = UIButton.getButton(vc: self,imageName: "nav_my_no",selectImageName: "nav_my_yes", action:#selector(ViewController.myAction))
        navMyBtn?.frame = CGRect.init(x: 0, y: 0, width: 60, height: 30)
        titleview.addSubview(navMyBtn!)
        navMerchantsBtn = UIButton.getButton(vc: self,imageName: "nav_merchants_no",selectImageName: "nav_merchants_yes", action:#selector(ViewController.merchantsAction))
        navMerchantsBtn?.frame = CGRect.init(x: (navMyBtn?.frame.maxX)!, y: 0, width: 60, height: 30)
        titleview.addSubview(navMerchantsBtn!)
        navInformationBtn = UIButton.getButton(vc: self,imageName: "nav_information_no",selectImageName: "nav_information_yes", action:
            #selector(ViewController.informationAction))
        navInformationBtn?.frame = CGRect.init(x: (navMerchantsBtn?.frame.maxX)!, y: 0, width: 60, height: 30)
        titleview.addSubview(navInformationBtn!)
        navigationItem.titleView = titleview

    }
    func informationAction(btn:UIButton){
        navMyBtn?.setImage(UIImage.init(named: "nav_my_no"), for: UIControlState.normal)
        navMerchantsBtn?.setImage(UIImage.init(named: "nav_merchants_no"), for: UIControlState.normal)
        navInformationBtn?.setImage(UIImage.init(named: "nav_information_yes"), for: UIControlState.normal)
    }
    func myAction(btn:UIButton){
        navMyBtn?.setImage(UIImage.init(named: "nav_my_yes"), for: UIControlState.normal)
        navMerchantsBtn?.setImage(UIImage.init(named: "nav_merchants_no"), for: UIControlState.normal)
        navInformationBtn?.setImage(UIImage.init(named: "nav_information_no"), for: UIControlState.normal)
    }

    func merchantsAction(btn:UIButton){
        print("ddd")
        navMyBtn?.setImage(UIImage.init(named: "nav_my_no"), for: UIControlState.normal)
        navMerchantsBtn?.setImage(UIImage.init(named: "nav_merchants_yes"), for: UIControlState.normal)
        navInformationBtn?.setImage(UIImage.init(named: "nav_information_no"), for: UIControlState.normal)
    }

}
