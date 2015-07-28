//
//  ViewController.swift
//  myapp
//
//  Created by 小林芳樹 on 2015/07/25.
//  Copyright (c) 2015年 小林芳樹. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.yellowColor()
        
        self.title = "Home"
        let button1 = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
        let button2 = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
        let button3 = UIButton.buttonWithType(UIButtonType.InfoDark) as! UIButton
        let button4 = UIButton.buttonWithType(UIButtonType.ContactAdd) as! UIButton
        
        
        button1.setTitle("ボタンだぜ！", forState: UIControlState.Normal)
        button1.backgroundColor = UIColor.blueColor()
        button1.sizeToFit()
        
        button2.setImage(UIImage(named: "btn_count.png"), forState: UIControlState.Normal)
        button2.sizeToFit()
        
        button1.center = CGPointMake(100, 150)
        button1.addTarget(self, action: "didTouch:", forControlEvents: UIControlEvents.TouchUpInside)
        button2.center = CGPointMake(100, 300)
        button3.center = CGPointMake(100, 450)
        button4.center = CGPointMake(100, 600)
        
        self.view.addSubview(button1)
        self.view.addSubview(button2)
        self.view.addSubview(button3)
        self.view.addSubview(button4)
        
        /*
        let view = UIView(frame: CGRectMake(10, 10, 25, 20))
        view.backgroundColor = UIColor.redColor()
        self.view.addSubview(view)
        
        let label = UILabel()
        label.textColor = UIColor.redColor()
        label.text = "ほげほげー"
        label.sizeToFit()
        label.center = CGPointMake(100,100)
        self.view.addSubview(label)
        */
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func didTouch(button :UIButton) {
        println("ボタンがタッチされたよ")
    }


}

