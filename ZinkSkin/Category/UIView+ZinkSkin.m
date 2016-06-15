//
//  UIView+ZinkSkin.m
//  NightThem
//
//  Created by kfzx-linz on 16/5/30.
//  Copyright © 2016年 ICBC. All rights reserved.
//

#import "UIView+ZinkSkin.h"
#import "NSObject+ZinkSkin.h"

@implementation UIView (ZinkSkin)

- (void)zinkSetSkinWithBackgroundColors:(NSArray<UIColor *> *)array {
    [self setViewSkinInfos:array withSelector:@selector(setBackgroundColor:)];
}

@end
