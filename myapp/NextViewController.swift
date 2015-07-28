//
//  NextViewController.swift
//  myapp
//
//  Created by 小林芳樹 on 2015/07/25.
//  Copyright (c) 2015年 小林芳樹. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: true)
        
        let nextBtn:UIButton = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
        nextBtn.addTarget(self, action: "popView", forControlEvents: UIControlEvents.TouchUpInside)
        nextBtn.frame = CGRectMake(0, 0, 24, 24)
        nextBtn.setImage(UIImage(named: "btn"), forState: .Normal)
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: nextBtn)
        self.view.backgroundColor = UIColor.whiteColor()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    func popView() {
        self.navigationController?.popViewControllerAnimated(true)
        //let next = NextViewController()
        //self.navigationController?.pushViewController(next, animated: true)
    }
}
