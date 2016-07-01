//
//  QuartzTest.swift
//  LJYQ
//
//  Created by zhouqiang on 16/7/1.
//  Copyright © 2016年 zhou. All rights reserved.
//

import Foundation


func test_customViewOnView(parentView:UIView) { // drawRect
    let view = JYQCustomView(frame: CGRect(x: 100, y: 100, width: 150, height: 80))
    view.backgroundColor = UIColor.brownColor()
    parentView.addSubview(view)
}

func test_transformOnView(parentView:UIView) {  // Affine
    let view = JYQCustomView(frame: CGRect(x: 100, y: 100, width: 150, height: 80))
    view.backgroundColor = UIColor.brownColor()
    parentView.addSubview(view)
    
    let transform = CGAffineTransformMakeTranslation(0, 100)
    view.transform = transform
}