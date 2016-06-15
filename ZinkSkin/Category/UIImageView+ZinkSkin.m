//
//  UIImageView+ZinkSkin.m
//  NightThem
//
//  Created by kfzx-linz on 16/5/31.
//  Copyright © 2016年 ICBC. All rights reserved.
//

#import "UIImageView+ZinkSkin.h"
#import "NSObject+ZinkSkin.h"

@implementation UIImageView (ZinkSkin)

- (void)zinkSetSkinWithImages:(NSArray<UIImage *> *)array {
    [self setViewSkinInfos:array withSelector:@selector(setImage:)];
}

@end
