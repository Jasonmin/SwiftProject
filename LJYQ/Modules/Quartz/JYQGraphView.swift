//
//  JYQGraphView.swift
//  LJYQ
//
//  Created by zhouqiang on 16/7/1.
//  Copyright © 2016年 zhou. All rights reserved.
//

import UIKit



class JYQGraphView: UIView {
    
    let kXScale = 5.0
    let kYScale = 100.0
    
    var timer:dispatch_source_t?

    override func awakeFromNib() {
        
        self.contentMode = .Right
        
    }
    
    func updateValues() {
        
    }
    
    override func drawRect(rect: CGRect) {
        
    }
}
