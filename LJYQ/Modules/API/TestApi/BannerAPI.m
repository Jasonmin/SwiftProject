//
//  BannerAPI.m
//  GGS
//
//  Created by zhou on 16/5/15.
//  Copyright © 2016年 ccxx. All rights reserved.
//

#import "BannerAPI.h"

@implementation BannerAPI {
    NSString *_pos;
    NSString *_appType;
}

- (id)initWithPosition:(NSString*)pos
                  type:(NSString*)type {
    self = [super init];
    if (self) {
        _pos = pos;
        _appType = type;
    }
    return self;
}

- (NSString *)requestUrl {
    return @"http://api-ecloud.guoguoshu.net/v324/global/activity";
}

- (id)requestArgument {
    return @{@"position":_pos,
             @"appType":_appType};
}

@end
