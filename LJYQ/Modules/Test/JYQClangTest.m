//
//  JYQClangTest.m
//  LJYQ
//
//  Created by zhouqiang on 16/7/10.
//  Copyright © 2016年 zhou. All rights reserved.
//

#import "JYQClangTest.h"

@implementation JYQClangTest

+ (void)clang_block {
    
    int global = 100;
    void(^myBlock)() = ^{
        NSLog(@"global = %d", global);
    };
    myBlock();
}

@end
