//
//  QLQNetworkConfig.h
//  GGS
//
//  Created by zhou on 16/5/15.
//  Copyright © 2016年 ccxx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QLQNetworkConfig : NSObject

@property (nonatomic, strong) NSString *baseUrl;

+ (QLQNetworkConfig*)sharedInstance;

@end
