//
//  XNLocation.m
//  XNWeather
//
//  Created by 小鸟 on 2017/5/12.
//  Copyright © 2017年 小鸟. All rights reserved.
//

#import "XNLocation.h"



static XNLocation *location = nil;

static CLLocationManager *manager = nil;

@implementation XNLocation

+ (instancetype)shareLocation {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        location = [[XNLocation alloc]init];
        
        manager = [[CLLocationManager alloc]init];
        
        [manager requestWhenInUseAuthorization];
    });
    
    return location;
}

- (void)getlocationName {

    manager.delegate = self;
    manager.distanceFilter = kCLLocationAccuracyBest;
    manager.desiredAccuracy = kCLLocationAccuracyBestForNavigation;
    
    [manager startUpdatingLocation];
    
}


- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations {
    CLLocation *location = [locations lastObject];
    CLGeocoder *geocoder = [[CLGeocoder alloc]init];
    
    [geocoder reverseGeocodeLocation:location completionHandler:^(NSArray<CLPlacemark *> * _Nullable placemarks, NSError * _Nullable error) {
        
        NSString *cityName = placemarks.lastObject.addressDictionary[@"City"];
        NSString *str = [cityName substringToIndex:cityName.length -1];
       

    }];

}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
     manager.delegate = self;
}



+ (NSString *)getLocationName {

   
    
    return @"";
}

@end
