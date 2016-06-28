//
//  ApiTest.swift
//  LJYQ
//
//  Created by zhouqiang on 16/6/28.
//  Copyright © 2016年 zhou. All rights reserved.
//

import Foundation

func test_banner() {
    let bannerApi = BannerAPI(position: "1", type: "1")
    bannerApi.startWithCompletionHandler { (reqeust) in
        let responseData = reqeust.responseObject as! NSDictionary
        //let model = JYQBanner.yy_modelWithDictionary(responseData as [NSObject : AnyObject])!
        
        
        let str = responseData.jsonString()
        printLog(responseData)
        printLog(str)
    }
}