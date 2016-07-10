//
//  JYQOCTest.m
//  LJYQ
//
//  Created by zhouqiang on 16/7/10.
//  Copyright © 2016年 zhou. All rights reserved.
//

#import "JYQOCTest.h"

typedef void(^ZhouBlock)();

@interface JYQOCTest ()
@property (nonatomic, assign) ZhouBlock block;
@end

@implementation JYQOCTest

// copy
+ (void)oc_logArray {
    NSArray *arr = @[@"1",@"2"];
    NSLog(@"arr:%@",arr);
}

+ (void)oc_logDict {
    NSDictionary *dict = @{@"one":@"zhou",
                           @"two":@"qiang"};
    NSLog(@"dict:%@",dict);
}

+ (void)oc_copy {
    NSString *str = @"123";
    NSMutableString *strM = [str copy];
    NSLog(@"str:%p",str);
    NSLog(@"strM:%p",strM);
}

+ (void)oc_arrStrCopy {
    NSMutableString *strM = [@"123" mutableCopy];
    NSArray *arr = @[strM];
    
//    NSMutableArray *arrM = [arr mutableCopy];
    NSMutableString *strResult = [arr firstObject];
    [strResult appendString:@"456"];
    
    NSLog(@"strResult:%@",strResult);
}

// block
+ (void)block_create {
    
    void(^myBlock)() = ^{
        NSLog(@"a block");
    };
    
    myBlock();
}

+ (void)block_localVar {
    // 声明局部变量global
    int global = 100;
    
    void(^myBlock)() = ^{
        NSLog(@"global = %d", global);
    };
    // 调用后控制台输出"global = 100"
    myBlock();
}

@end
