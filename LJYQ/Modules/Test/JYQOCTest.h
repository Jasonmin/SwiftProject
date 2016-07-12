//
//  JYQOCTest.h
//  LJYQ
//
//  Created by zhouqiang on 16/7/10.
//  Copyright © 2016年 zhou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface JYQOCTest : NSObject

+ (void)oc_logArray;
+ (void)oc_logDict;
+ (void)oc_copy;
+ (void)oc_arrStrCopy;

+ (void)block_create;
+ (void)block_localVar;
+ (void)block_threeKindBlock;

+ (void)touch_createOnView:(UIView*)superView;
@end
