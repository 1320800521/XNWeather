//
//  XNNetwork.h
//  XNWeather
//
//  Created by 小鸟 on 2017/5/11.
//  Copyright © 2017年 小鸟. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XNNetwork : NSObject

+ (instancetype)shareInstNetwork;

+ (void)getdate:(NSString *)str;

@end
