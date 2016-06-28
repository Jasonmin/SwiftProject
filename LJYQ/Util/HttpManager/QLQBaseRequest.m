//
//  QLQBaseRequest.m
//  GGS
//
//  Created by zhou on 16/5/14.
//  Copyright © 2016年 ccxx. All rights reserved.
//

#import "QLQBaseRequest.h"
#import "QLQNetworkAgent.h"

@implementation QLQBaseRequest

- (NSString*)requestUrl {
    return @"";
}

- (NSString*)baseUrl {
    return @"";
}

- (id)requestArgument {
    return nil;
}

- (QLQRequestMethod)requestMethod {
    return QLQRequestMethodPOST;
}

- (NSTimeInterval)requestTimeoutInterval {
    return 60;
}

- (void)start {
    [[QLQNetworkAgent sharedInstance] addRequest:self];
}

- (void)startWithCompletionHandler:(QLQRequestCompletionBlock)completion {
    if (completion) {
        self.completionBlock = completion;
    }
    [self start];
}


@end
