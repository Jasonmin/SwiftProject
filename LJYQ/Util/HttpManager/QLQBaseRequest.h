//
//  QLQBaseRequest.h
//  GGS
//
//  Created by zhou on 16/5/14.
//  Copyright © 2016年 ccxx. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, QLQRequestMethod) {
    QLQRequestMethodPOST = 0,
};

@class QLQBaseRequest;
typedef void(^QLQRequestCompletionBlock)(QLQBaseRequest *request);

@interface QLQBaseRequest : NSObject

@property (nonatomic, strong) NSURLResponse *urlResponse;
@property (nonatomic, strong) id responseObject;
@property (nonatomic, strong) NSError *error;

@property (nonatomic, copy) QLQRequestCompletionBlock completionBlock;

- (NSString*)requestUrl;
- (NSString*)baseUrl;
- (id)requestArgument;
- (QLQRequestMethod)requestMethod;
- (NSTimeInterval)requestTimeoutInterval;

- (void)startWithCompletionHandler:(QLQRequestCompletionBlock)completion;


@end
