//
//  JYQBaseModel.h
//  LJYQ
//
//  Created by zhouqiang on 16/6/29.
//  Copyright © 2016年 zhou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JYQBaseModel : NSObject

@property (nonatomic, assign) NSInteger status;

@property (nonatomic, copy) NSString *message;

@property (nonatomic, strong) id result;

@end
