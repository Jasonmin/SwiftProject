//
//  JYQLogger.swift
//  LJYQ
//
//  Created by zhouqiang on 16/6/28.
//  Copyright © 2016年 zhou. All rights reserved.
//

import Foundation

// Debug Logger
func printLog<T>(message: T,
              file: String = #file,
              method: String = #function,
              line: Int = #line)
{
    
    #if DEBUG
        print("\((file as NSString).lastPathComponent)[\(line)], \(method): \(message)")
    #endif
}
