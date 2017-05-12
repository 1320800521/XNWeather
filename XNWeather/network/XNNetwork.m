//
//  XNNetwork.m
//  XNWeather
//
//  Created by 小鸟 on 2017/5/11.
//  Copyright © 2017年 小鸟. All rights reserved.
//

#import "XNNetwork.h"

@implementation XNNetwork

static XNNetwork *network = nil;

+ (instancetype)shareInstNetwork {

    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        network = [[XNNetwork alloc]init];
    });
    
    return network;
}

+ (void)getdate:(NSString *)str {


}
@end
