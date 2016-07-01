//
//  JYQFirVC.swift
//  LJYQ
//
//  Created by zhouqiang on 16/6/27.
//  Copyright © 2016年 zhou. All rights reserved.
//

import UIKit

class JYQFirVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        test()
        
    }
    
    func test() {
        // 1
        let testModel:JYQTestModel! = JYQTestModel()
//        testModel.test_mbhud(self)
        testModel.test_extension()
        // 2
//        gcd_after()
//        test_banner()
        gcd_asyn()
    }
}
