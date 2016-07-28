//
//  JYQTestModel.swift
//  LJYQ
//
//  Created by zhouqiang on 16/6/28.
//  Copyright © 2016年 zhou. All rights reserved.
//

import UIKit

class JYQTestModel: NSObject {
    
    func test_mbhud(vc:UIViewController) {
        hud_showHUDAddedTo(vc.view)
    }
    
    func test_extension() {
        let str:String = "zhouqiang"
        printLog(str)
    }
}
