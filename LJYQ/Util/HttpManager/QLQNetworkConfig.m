//
//  QLQNetworkConfig.m
//  GGS
//
//  Created by zhou on 16/5/15.
//  Copyright © 2016年 ccxx. All rights reserved.
//

#import "QLQNetworkConfig.h"



@implementation QLQNetworkConfig

+ (QLQNetworkConfig*)sharedInstance {
    
    static QLQNetworkConfig *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc]init];
    });
    return sharedInstance;
}

@end
