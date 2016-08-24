//
//  IRPlusLessView.swift
//  IRPlusLessSwift
//
//  Created by Irena on 16/8/20.
//  Copyright © 2016年 Irena. All rights reserved.
//

import UIKit

class IRPlusLessView: UIView {

    private var numLabel : UILabel?
    private var lessBtn : UIButton?
    private let plusBtn = UIButton.init()
    /// 可加到最大的值【默认为5】
    internal var maxNum : Int = 5
    /// 显示的样式颜色【默认为蓝色】
    internal var styleColor : UIColor = UIColor.blueColor() {
        didSet {
            self.layer.borderColor = self.styleColor.CGColor
            self.lessBtn!.setTitleColor(styleColor, forState: UIControlState.Normal)
            self.plusBtn.setTitleColor(styleColor, forState: UIControlState.Normal)
        }
    }
    /// 当前显示的值
    internal var currentNum : Int {
        get {
            return Int(self.numLabel!.text!)!
        }
    }
    
//    internal var test : Int
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        numLabel = UILabel.init()
        numLabel!.textAlignment = NSTextAlignment.Center
        numLabel!.text = "1"
        numLabel!.font = UIFont.boldSystemFontOfSize(frame.size.height * 0.4)
        let fontSize = frame.size.height - frame.size.height * 0.3
        
        
        lessBtn = UIButton.init()
        lessBtn!.titleLabel?.font = UIFont.systemFontOfSize(fontSize)
        lessBtn!.enabled = true
        

        
        lessBtn!.addTarget(self, action: #selector(IRPlusLessView.less(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        
        lessBtn!.setTitle("-", forState: UIControlState.Normal)
        lessBtn!.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        lessBtn!.setTitleColor(UIColor.grayColor(), forState: UIControlState.Disabled)


        plusBtn.setTitleColor(UIColor.grayColor(), forState: UIControlState.Disabled)
        plusBtn.setTitle("+", forState: UIControlState.Normal)
        plusBtn.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        plusBtn.titleLabel?.font = UIFont.systemFontOfSize(fontSize)
        plusBtn.addTarget(self, action:#selector(IRPlusLessView.plus(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        
        
        
        let stackView = UIStackView.init(arrangedSubviews: [lessBtn!,numLabel!,plusBtn])
        stackView.frame = self.bounds
        self.addSubview(stackView)
        stackView.axis = UILayoutConstraintAxis.Horizontal
        stackView.distribution = UIStackViewDistribution.FillEqually
        
        self.layer.borderColor = UIColor.blueColor().CGColor
        self.layer.borderWidth = 2.0
        self.layer.cornerRadius = 15
        self.layer.masksToBounds = true

    }
    /**
    *  减号按钮点击
    *
    *  @param sender 减号按钮
    */
    @objc
    private func less(sender:UIButton) {
    plusBtn.enabled = true;

      var num =  Int(numLabel!.text!)
        
        if(num > 1){
            num! -= 1
        }
        
      numLabel!.text = String(num!)

      sender.enabled = num <= 1 ? false : true
      if !sender.enabled {
        return
        }
    }
    /**
    *  加号按钮点击
    *
    *  @param sender 加号按钮
    */
    @objc
    private func plus(sender: UIButton) {
    lessBtn!.enabled = true
      var num =  Int(numLabel!.text!)
        num = num! + 1
        numLabel!.text = String(num!)
        
        sender.enabled = num >= maxNum ? false : true
    if (!sender.enabled) {
        return
        }
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

