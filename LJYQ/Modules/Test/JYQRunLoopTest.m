//
//  JYQRunLoopTest.m
//  LJYQ
//
//  Created by zhouqiang on 16/7/15.
//  Copyright © 2016年 zhou. All rights reserved.
//

#import "JYQRunLoopTest.h"

@implementation JYQRunLoopTest

+ (void)rloop_test {
    
    NSRunLoop *curLoop = [NSRunLoop currentRunLoop];
    NSRunLoop *mainLoop = [NSRunLoop mainRunLoop];
    
    CFRunLoopRef ref = [curLoop getCFRunLoop];
    
    BOOL isRunning = [curLoop runMode:NSDefaultRunLoopMode beforeDate:[NSDate distantFuture]];
    
}

@end
