//
//  SkinManager.h
//  ICBCI
//
//  Created by kfzx-linz on 15/12/30.
//  Copyright © 2015年 ICBC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIView+ZinkSkin.h"
#import "UILabel+ZinkSkin.h"
#import "UIButton+ZinkSkin.h"
#import "UIImageView+ZinkSkin.h"
#import "UITextField+ZinkSkin.h"

/**
 *  皮肤更改通知
 */
extern NSString * const kViewSkinChangeNotification;
extern NSString * const kControlSkinChangeNotification;

typedef NS_ENUM(NSInteger, SkinType) {
    SkinTypeDefault = 0,
    SkinTypeNight,
    SkinTypeOther
};

/**
 *  皮肤管理工具类
 */
@interface ZinkSkinManager : NSObject

/**
 *  设置该属性，即可修改当前皮肤
 */
@property (assign, nonatomic) SkinType skinType;
+ (instancetype)shareInstance;

@end
