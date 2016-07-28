//
//  JYQObject+Extentsion.swift
//  LJYQ
//
//  Created by zhouqiang on 16/7/28.
//  Copyright © 2016年 zhou. All rights reserved.
//

import Foundation

extension NSDictionary {
    
    func jsonString() -> String {
        return objectToString(self)
    }
}

extension NSArray {
    func jsonString() -> String {
        return objectToString(self)
    }
}

private func objectToString(obj:AnyObject!) -> String {
    do {
        let data = try NSJSONSerialization.dataWithJSONObject(obj, options: .PrettyPrinted)
        return String(data: data, encoding: NSUTF8StringEncoding)!
    } catch {
        return "nil"
    }
}