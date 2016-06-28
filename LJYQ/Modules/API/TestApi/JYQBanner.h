//
//  JYQBanner.h
//  LJYQ
//
//  Created by zhouqiang on 16/6/28.
//  Copyright © 2016年 zhou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JYQBanner : NSObject

@property (nonatomic, assign) NSInteger productId;

@property (nonatomic, copy) NSString *position;

@property (nonatomic, copy) NSString *imgUrl;

@property (nonatomic, copy) NSString *params;

@property (nonatomic, assign) NSInteger type;

@property (nonatomic, copy) NSString *desc;

@property (nonatomic, copy) NSString *code;

@property (nonatomic, copy) NSString *linkUrl;

@property (nonatomic, copy) NSString *endSign;

@property (nonatomic, assign) NSInteger order;

@property (nonatomic, copy) NSString *name;

@property (nonatomic, copy) NSString *events;

@end
