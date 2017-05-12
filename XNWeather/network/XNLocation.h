//
//  XNLocation.h
//  XNWeather
//
//  Created by 小鸟 on 2017/5/12.
//  Copyright © 2017年 小鸟. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

typedef void(^loctionInfo)(NSDictionary *dict);

@interface XNLocation : NSObject<CLLocationManagerDelegate>

+ (instancetype)shareLocation;

/**
 获取定位点的名称

 @return 返回定位地点的名称
 */
+ (NSString *)getLocationName;

@end
