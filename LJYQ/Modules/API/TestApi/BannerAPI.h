//
//  BannerAPI.h
//  GGS
//
//  Created by zhou on 16/5/15.
//  Copyright © 2016年 ccxx. All rights reserved.
//

#import "QLQRequest.h"

@interface BannerAPI : QLQRequest

- (id)initWithPosition:(NSString*)pos
                  type:(NSString*)type;

@end
