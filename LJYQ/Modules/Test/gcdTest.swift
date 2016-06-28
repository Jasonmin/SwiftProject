//
//  gcdTest.swift
//  LJYQ
//
//  Created by zhouqiang on 16/6/28.
//  Copyright © 2016年 zhou. All rights reserved.
//

import Foundation

func gcd_after() {
    let delayTime = dispatch_time(DISPATCH_TIME_NOW, Int64(3 * Double(NSEC_PER_SEC)))
    dispatch_after(delayTime, dispatch_get_main_queue()) {
        printLog("")
    }
}