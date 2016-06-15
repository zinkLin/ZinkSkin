//
//  UIView+ZinkSkin.h
//  NightThem
//
//  Created by kfzx-linz on 16/5/30.
//  Copyright © 2016年 ICBC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ZinkSkin)

/**
 *  将各个皮肤对应的颜色传入数组
 */
- (void)zinkSetSkinWithBackgroundColors:(NSArray<UIColor *> *)array;

@end
