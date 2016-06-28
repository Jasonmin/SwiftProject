//
//  QLQNetworkAgent.m
//  GGS
//
//  Created by zhou on 16/5/15.
//  Copyright © 2016年 ccxx. All rights reserved.
//

#import "QLQNetworkAgent.h"
#import "QLQNetworkConfig.h"
#import "AFNetworking.h"

@implementation QLQNetworkAgent {
    QLQNetworkConfig *_config;
    AFURLSessionManager *_manager;
}

+ (QLQNetworkAgent*)sharedInstance {
    
    static QLQNetworkAgent *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc]init];
    });
    return sharedInstance;
}

- (id)init {
    self = [super init];
    if (self) {
        _config = [QLQNetworkConfig sharedInstance];
        
        NSURLSessionConfiguration *sessionConfig = [NSURLSessionConfiguration defaultSessionConfiguration];
        _manager = [[AFURLSessionManager alloc]initWithSessionConfiguration:sessionConfig];
        _manager.operationQueue.maxConcurrentOperationCount = 4;
    }
    return self;
}

- (void)addRequest:(QLQBaseRequest*)request {
    
    QLQRequestMethod methodType = [request requestMethod];
    NSString *url = [self buildRequestUrl:request];
    id param = request.requestArgument;
    
    NSString *method = @"POST";
    if (methodType == QLQRequestMethodPOST) {
        
    }
    
    NSURLRequest *urlRequest = [[AFHTTPRequestSerializer serializer] requestWithMethod:method URLString:url parameters:param error:nil];
    NSURLSessionDataTask *dataTask = [_manager dataTaskWithRequest:urlRequest uploadProgress:nil downloadProgress:nil completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
        
        request.urlResponse = response;
        request.responseObject = responseObject;
        request.error = error;
        
        [self handleResultWithRequest:request];
    }];
    [dataTask resume];
}

- (void)handleResultWithRequest:(QLQBaseRequest*)request{
    if (request.completionBlock) {
        request.completionBlock(request);
    }
}

- (NSString*)buildRequestUrl:(QLQBaseRequest*)request {
    NSString *detailUrl = [request requestUrl];
    if ([detailUrl hasPrefix:@"http"]) {
        return detailUrl;
    }
    NSString *baseUrl;
    if ([request baseUrl].length > 0) {
        baseUrl = [request baseUrl];
    } else {
        baseUrl = [_config baseUrl];
    }
    
    return [NSString stringWithFormat:@"%@%@",[request baseUrl],detailUrl];
}

@end
