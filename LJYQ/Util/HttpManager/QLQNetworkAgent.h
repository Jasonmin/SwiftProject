//
//  QLQNetworkAgent.h
//  GGS
//
//  Created by zhou on 16/5/15.
//  Copyright © 2016年 ccxx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QLQBaseRequest.h"

@interface QLQNetworkAgent : NSObject

+ (QLQNetworkAgent*)sharedInstance;

- (void)addRequest:(QLQBaseRequest*)request;

@end
