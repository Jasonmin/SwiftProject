//
//  JYQCustomView.swift
//  LJYQ
//
//  Created by zhouqiang on 16/7/1.
//  Copyright © 2016年 zhou. All rights reserved.
//

import UIKit

class JYQCustomView: UIView {

    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        
//        self.drawRedRect()
//        self.drawBezierOval()
        self.drawBezierRect()
    }
    
    func drawRedRect() {
        UIColor.redColor().setFill()
        UIRectFill(CGRect(x: 10, y: 10, width: self.frame.size.width-20, height: self.frame.size.height-20))
    }
    
    func drawBezierOval() {
        UIColor.whiteColor().setFill()
        UIColor.redColor().setStroke()
        let path = UIBezierPath(ovalInRect: CGRect(x: 10, y: 10, width: self.frame.size.width-20, height: self.frame.size.height-20))
        path.fill()
        path.stroke()
    }
    
    func drawBezierRect() {
        UIColor.redColor().setStroke()
        let path = UIBezierPath()
        path.moveToPoint(CGPointMake(5, 5))
        path.addLineToPoint(CGPointMake(self.frame.size.width-5, 5))
        path.addLineToPoint(CGPointMake(self.frame.size.width-5, self.frame.size.height-5))
        path.addLineToPoint(CGPointMake(5, self.frame.size.height-5))
        path.closePath()
        path.lineWidth = 4
        path.stroke()
    }
}
