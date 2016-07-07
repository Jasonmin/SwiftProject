//
//  JYQVideoVC.swift
//  LJYQ
//
//  Created by zhouqiang on 16/7/7.
//  Copyright © 2016年 zhou. All rights reserved.
//

import UIKit

class JYQVideoVC: UIViewController {
    
    let videoURL = "http://2527.vod.myqcloud.com/2527_117134a2343111e5b8f5bdca6cb9f38c.f20.mp4"
    var param:NSMutableDictionary!

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        let path = videoURL
        param = NSMutableDictionary()
        
        if path.hasSuffix("mp4") {
            param.setValue(5.0, forKey: KxMovieParameterMinBufferedDuration)
            param.setValue(true, forKey: KxMovieParameterDisableDeinterlacing)
        }
        
        let vc:KxMovieViewController = KxMovieViewController.movieViewControllerWithContentPath(path, parameters: param as [NSObject : AnyObject]) as! KxMovieViewController
        presentViewController(vc, animated: true, completion: nil)
        
    }
}
