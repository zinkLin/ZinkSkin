//
//  UITextField+ZinkSkin.m
//  NightThem
//
//  Created by kfzx-linz on 16/5/31.
//  Copyright © 2016年 ICBC. All rights reserved.
//

#import "UITextField+ZinkSkin.h"
#import "NSObject+ZinkSkin.h"

@implementation UITextField (ZinkSkin)

/**
 *  将各个皮肤对应的字体传入数组
 */
- (void)zinkSetSkinWithFonts:(NSArray<UIFont *> *)array {
    [self setViewSkinInfos:array withSelector:@selector(setFont:)];
}
/**
 *  将各个皮肤对应的文本颜色传入数组
 */
- (void)zinkSetSkinWithTextColors:(NSArray<UIColor *> *)array {
    [self setViewSkinInfos:array withSelector:@selector(setTextColor:)];
}

@end
