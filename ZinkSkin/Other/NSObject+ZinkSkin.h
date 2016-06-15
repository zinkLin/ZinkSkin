//
//  NSObject+ZinkSkin.h
//  NightThem
//
//  Created by kfzx-linz on 16/5/30.
//  Copyright © 2016年 ICBC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZinkSkinInfo.h"

@interface NSObject (ZinkSkin)

/**
 *  设置普通视图
 */
- (void)setViewSkinInfos:(NSArray *)array
      withSelector:(SEL)selector;

/**
 *  设置继承自UIControl的视图（多参数）
 */
- (void)setControlSkinInfos:(NSArray *)array
               withSelector:(SEL)selector;

@end
