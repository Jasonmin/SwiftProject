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

func gcd_asyn() {
    let queue = dispatch_queue_create("com.ljyq.mySerialQueue", nil)
    dispatch_async(queue) { 
        printLog("task in the queue")
    }
    
    dispatch_async(dispatch_get_main_queue()) { 
        printLog("main")
    }
}