//
//  JYQVCSwizzling.swift
//  LJYQ
//
//  Created by zhouqiang on 16/6/27.
//  Copyright © 2016年 zhou. All rights reserved.
//

import UIKit

extension UIViewController {
    
    override public static func initialize() {
        
        struct Static {
            static var token: dispatch_once_t = 0;
        }
        
        dispatch_once(&Static.token) {
            let originalSelector = #selector(UIViewController.viewDidLoad)
            let swizzledSelector = #selector(UIViewController.jyq_viewDidLoad)
            
            let originalMethod = class_getInstanceMethod(self, originalSelector)
            let swizzledMethod = class_getInstanceMethod(self, swizzledSelector)
            
            let didAddMethod:Bool = class_addMethod(self, originalSelector, method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod))
            
            if didAddMethod {
                class_replaceMethod(self, swizzledSelector, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod))
            }else {
                method_exchangeImplementations(originalMethod, swizzledMethod)
            }
            
        }
    }
    
    func jyq_viewDidLoad() {
        
        let theClass:AnyClass! = NSClassFromString("UIInputWindowController")
        if !self.isKindOfClass(theClass) {
            // rgb(235, 235, 241)
            self.view.backgroundColor = UIColor(red: 235/255, green: 235/255, blue: 241/255, alpha: 1.0)
        }
        print(self)
        self.jyq_viewDidLoad()
    }
}
