//
//  ViewController.swift
//  IRPlusLessSwift
//
//  Created by Irena on 16/8/20.
//  Copyright © 2016年 Irena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    /// 定义属性
    var plusLessView : IRPlusLessView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        plusLessView = IRPlusLessView(frame: CGRect(x: 100,y: 100,width: 200,height: 50))
        plusLessView!.maxNum = 3
        plusLessView!.styleColor = UIColor.greenColor()
        self.view.addSubview(plusLessView!)
        
    }
    
    /**
     获取当前显示的数字
     */
    @IBAction func getCurrentNum(sender: AnyObject) {
        print(plusLessView!.currentNum)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

