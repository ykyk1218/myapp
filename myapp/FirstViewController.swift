//
//  FirstViewController.swift
//  myapp
//
//  Created by 小林芳樹 on 2015/07/25.
//  Copyright (c) 2015年 小林芳樹. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        //ナビゲーションの戻るボタンを隠す
        self.navigationItem.setHidesBackButton(true, animated: true)
        self.title = "ふぁーすと"
        self.view.backgroundColor = UIColor.cyanColor()
        
        let button1 = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
        button1.setTitle("ボタンだ", forState: UIControlState.Normal)
        button1.backgroundColor = UIColor.blueColor()
        button1.sizeToFit()
        button1.center = CGPointMake(100, 350)
        button1.addTarget(self, action: "nextView", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button1)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func nextView() {
        let next = NextViewController()
        self.navigationController?.pushViewController(next, animated: true)
    }
    
    func didTouch() {
        let next = NextViewController()
        self.navigationController?.pushViewController(next, animated: true)
    }
}
