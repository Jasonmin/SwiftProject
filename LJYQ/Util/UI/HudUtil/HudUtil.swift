//
//  HudUtil.swift
//  LJYQ
//
//  Created by zhouqiang on 16/6/28.
//  Copyright © 2016年 zhou. All rights reserved.
//

import Foundation

func hud_showHUDAddedTo(view:UIView){
    MBProgressHUD.showHUDAddedTo(view, animated: true)
}

func hud_hideHUDForView(view:UIView){
    MBProgressHUD.hideHUDForView(view, animated: true)
}