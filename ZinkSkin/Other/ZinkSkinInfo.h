//
//  ZinkSkinInfo.h
//  NightThem
//
//  Created by kfzx-linz on 16/5/30.
//  Copyright © 2016年 ICBC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZinkSkinInfo : NSObject

/**
 *  对应的设置函数
 */
@property (assign, nonatomic) SEL selector;
/**
 *  设置函数可能用到的参数，具体使用哪个参数，由当前皮肤决定
 */
@property (copy, nonatomic) NSArray *objects;

+ (ZinkSkinInfo *)skinWithSelector:(SEL)selector objects:(NSArray *)objects;

@end
