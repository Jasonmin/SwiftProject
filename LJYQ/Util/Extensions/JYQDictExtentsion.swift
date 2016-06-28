//
//  JYQDictExtentsion.swift
//  LJYQ
//
//  Created by zhouqiang on 16/6/28.
//  Copyright © 2016年 zhou. All rights reserved.
//

import Foundation

extension NSDictionary {
    
    func jsonString() -> String {
        do {
            let data = try NSJSONSerialization.dataWithJSONObject(self, options: .PrettyPrinted)
            return String(data: data, encoding: NSUTF8StringEncoding)!
        } catch {
            return "nil"
        }
    }
}