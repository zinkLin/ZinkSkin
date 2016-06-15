//
//  UIButton+ZinkSkin.h
//  NightThem
//
//  Created by kfzx-linz on 16/5/30.
//  Copyright © 2016年 ICBC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (ZinkSkin)
/**
 *  将各个皮肤对应的标题颜色传入数组
 */
- (void)zinkSetSkinWithTitleColors:(NSArray<UIColor *> *)array forState:(UIControlState)state;
/**
 *  将各个皮肤对应的图标传入数组
 */
- (void)zinkSetSkinWithImage:(NSArray<UIImage *> *)array forState:(UIControlState)state;
/**
 *  将各个皮肤对应的背景图传入数组
 */
- (void)zinkSetSkinWithBackgroundImage:(NSArray<UIImage *> *)array forState:(UIControlState)state;

@end
