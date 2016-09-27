//
//  ViewController.swift
//  GFBroswerImageSwiftDemo
//
//  Created by lizhongqiang on 2016/9/27.
//  Copyright © 2016年 lizhongqiang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.navigationItem.title = "图片浏览"
        self.view.backgroundColor = UIColor.white
        
        let testBtn = UIButton()
        testBtn.frame = CGRect(x:100, y:100, width:100, height:40)
        testBtn.backgroundColor = UIColor.gray
        testBtn.setTitle("测试", for: UIControlState.normal)
        testBtn.addTarget(self, action: #selector(testButtonEvent), for: UIControlEvents.touchUpInside)
        self.view.addSubview(testBtn)
        
        
    }
    
    func testButtonEvent(sender:UIButton) -> Void {
        NSLog("testButtonEvent");
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

