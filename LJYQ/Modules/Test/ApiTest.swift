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
        let responseDict = reqeust.responseObject as! NSDictionary
        
        let baseModel = JYQBaseModel.mj_objectWithKeyValues(responseDict)
        if baseModel.status == 1 {
            let arr = baseModel.result["commercial"] as! NSArray
            let resultDict = arr.firstObject
            
            let bannerModel = JYQBanner.mj_objectWithKeyValues(resultDict)
            printLog(bannerModel)
            
            
        }
        
        printLog(responseDict)
        let str = responseDict.jsonString()
        printLog(str)
    }
}