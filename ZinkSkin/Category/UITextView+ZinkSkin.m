//
//  UITextView+ZinkSkin.m
//  Demo
//
//  Created by kfzx-linz on 16/6/17.
//  Copyright © 2016年 ICBC. All rights reserved.
//

#import "UITextView+ZinkSkin.h"
#import "NSObject+ZinkSkin.h"

@implementation UITextView (ZinkSkin)

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
