//
//  NSObject+Property.m
//  GGS
//
//  Created by zhouqiang on 16/5/31.
//  Copyright © 2016年 ccxx. All rights reserved.
//

#import "NSObject+Property.h"
#import <objc/runtime.h>

static const char *key = "name";

@implementation NSObject (Property)

- (NSString*)name {
    return objc_getAssociatedObject(self, key);
}

- (void)setName:(NSString*)name {
    objc_setAssociatedObject(self, key, name, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
