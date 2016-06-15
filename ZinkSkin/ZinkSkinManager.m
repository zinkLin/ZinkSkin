//
//  SkinManager.m
//  ICBCI
//
//  Created by kfzx-linz on 15/12/30.
//  Copyright © 2015年 ICBC. All rights reserved.
//

#import "ZinkSkinManager.h"

NSString * const kViewSkinChangeNotification = @"kViewSkinChangeNotification";
NSString * const kControlSkinChangeNotification = @"kControlSkinChangeNotification";

@interface ZinkSkinManager()

@end

@implementation ZinkSkinManager

+ (instancetype)shareInstance {
    static ZinkSkinManager *_sharedManager = nil;
    static dispatch_once_t oncePredicate;
    dispatch_once(&oncePredicate, ^{
        _sharedManager = [[ZinkSkinManager alloc] init];
    });
    
    return _sharedManager;
}

- (void)setSkinType:(SkinType)skinType {
    _skinType = skinType;
    [[NSNotificationCenter defaultCenter] postNotificationName:kViewSkinChangeNotification object:nil];
    [[NSNotificationCenter defaultCenter] postNotificationName:kControlSkinChangeNotification object:nil];
}

@end
