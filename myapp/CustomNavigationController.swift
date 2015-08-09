//
//  CustomNavigationController.swift
//  myapp
//
//  Created by 小林芳樹 on 2015/08/09.
//  Copyright (c) 2015年 小林芳樹. All rights reserved.
//

import UIKit

class CustomNavigationController: UINavigationController, UINavigationControllerDelegate {
    let nextBtn:UIButton = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let customNavigationBar = UIImageView(image: UIImage(named: "thumb_3"))
        customNavigationBar.contentMode = UIViewContentMode.ScaleAspectFill
        customNavigationBar.frame = CGRectMake(0, 0, UIScreen.mainScreen().bounds.width, 180)
        customNavigationBar.userInteractionEnabled = true
        
        self.view.addSubview(customNavigationBar)
        
        nextBtn.addTarget(self, action: "popView", forControlEvents: UIControlEvents.TouchUpInside)
        nextBtn.frame = CGRectMake(280, 40, 100, 80)
        nextBtn.setImage(UIImage(named: "door"), forState: .Normal)
        customNavigationBar.addSubview(nextBtn)
        
        self.delegate = self
    }
    
    func popView() {
        self.popViewControllerAnimated(true)
    }
    
    func navigationController(navigationController: UINavigationController, willShowViewController viewController: UIViewController, animated: Bool) {
        
        if(self.childViewControllers.count <= 1 ) {
            nextBtn.alpha = 0
        }else{
            nextBtn.alpha = 1
        }
        
    }
    
}
