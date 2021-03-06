//
//  UITextView+ZinkSkin.h
//  Demo
//
//  Created by kfzx-linz on 16/6/17.
//  Copyright © 2016年 ICBC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextView (ZinkSkin)

/**
 *  将各个皮肤对应的字体传入数组
 */
- (void)zinkSetSkinWithFonts:(NSArray<UIFont *> *)array;
/**
 *  将各个皮肤对应的文本颜色传入数组
 */
- (void)zinkSetSkinWithTextColors:(NSArray<UIColor *> *)array;

@end
