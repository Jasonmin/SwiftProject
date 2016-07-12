//
//  JYQOCTest.m
//  LJYQ
//
//  Created by zhouqiang on 16/7/10.
//  Copyright © 2016年 zhou. All rights reserved.
//

#import "JYQOCTest.h"
#import "JYQTouchView.h"

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

+ (void)block_threeKindBlock {

    // 1
    void(^globalBlock)() = ^() {
        NSLog(@"global block");
    };
    globalBlock();
    NSLog(@"%@",globalBlock);
    
    // 2
    int num = 100;
    void(^stackBlock)() = ^() {
        NSLog(@"stack block1 num:%d",num);
    };
    stackBlock();
    NSLog(@"%@",^() {
        NSLog(@"stack block2 num:%d",num);
    });
    NSLog(@"%@",stackBlock);
    
    // 3
    
}

// touch
+ (void)touch_createOnView:(UIView*)superView {
    JYQTouchView *touchView = [[JYQTouchView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    touchView.backgroundColor = [UIColor redColor];
    [superView addSubview:touchView];
}

@end
