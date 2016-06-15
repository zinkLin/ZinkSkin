//
//  UILabel+ZinkSkin.m
//  NightThem
//
//  Created by kfzx-linz on 16/5/30.
//  Copyright © 2016年 ICBC. All rights reserved.
//

#import "UILabel+ZinkSkin.h"
#import "NSObject+ZinkSkin.h"

@implementation UILabel (ZinkSkin)

- (void)zinkSetSkinWithFonts:(NSArray<UIFont *> *)array {
    [self setViewSkinInfos:array withSelector:@selector(setFont:)];
}

- (void)zinkSetSkinWithTextColors:(NSArray<UIColor *> *)array {
    [self setViewSkinInfos:array withSelector:@selector(setTextColor:)];
}

@end
