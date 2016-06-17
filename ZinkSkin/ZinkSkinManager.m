//
//  SkinManager.m
//  ICBCI
//
//  Created by kfzx-linz on 15/12/30.
//  Copyright © 2015年 ICBC. All rights reserved.
//

#import "ZinkSkinManager.h"
#import "ZinkManager+Storage.h"

NSString * const kSkinPersistenceKey = @"kSkinPersistenceKey";
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
    [ZinkManager zinkSaveString:@(skinType).stringValue byKey:kSkinPersistenceKey];
    [[NSNotificationCenter defaultCenter] postNotificationName:kViewSkinChangeNotification object:nil];
    [[NSNotificationCenter defaultCenter] postNotificationName:kControlSkinChangeNotification object:nil];
}

- (SkinType)skinType {
    SkinType type = [ZinkManager zinkLoadStringByKey:kSkinPersistenceKey].integerValue;
    return type;
}

@end
