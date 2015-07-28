//
//  ThirdViewController.swift
//  myapp
//
//  Created by 小林芳樹 on 2015/07/25.
//  Copyright (c) 2015年 小林芳樹. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "さーど"
        self.view.backgroundColor = UIColor.yellowColor()
        
        let nextBtn = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Action, target: self, action: "nextView")
        self.navigationItem.rightBarButtonItem = nextBtn

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
