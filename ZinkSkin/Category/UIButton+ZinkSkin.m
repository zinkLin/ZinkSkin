//
//  UIButton+ZinkSkin.m
//  NightThem
//
//  Created by kfzx-linz on 16/5/30.
//  Copyright © 2016年 ICBC. All rights reserved.
//

#import "UIButton+ZinkSkin.h"
#import "NSObject+ZinkSkin.h"
#import "ZinkSkinManager.h"

@implementation UIButton (ZinkSkin)

#pragma mark TitleColor
- (void)zinkSetSkinWithTitleColors:(NSArray<UIColor *> *)array
                          forState:(UIControlState)state {
    [self setSkinInfosWithObjects:array state:state selector:@selector(setTitleColors:)];
}

- (void)setTitleColors:(NSArray *)array {
    id object = [array objectAtIndex:[ZinkSkinManager shareInstance].skinType];
    UIControlState state = [[array lastObject] unsignedIntegerValue];
    [self setTitleColor:object forState:state];
}

#pragma mark Image
- (void)zinkSetSkinWithImage:(NSArray<UIImage *> *)array
                    forState:(UIControlState)state {
    [self setSkinInfosWithObjects:array state:state selector:@selector(setImages:)];
}

- (void)setImages:(NSArray *)array {
    id object = [array objectAtIndex:[ZinkSkinManager shareInstance].skinType];
    UIControlState state = [[array lastObject] unsignedIntegerValue];
    [self setImage:object forState:state];
}

#pragma mark BackgroundImage
- (void)zinkSetSkinWithBackgroundImage:(NSArray<UIImage *> *)array
                              forState:(UIControlState)state {
    [self setSkinInfosWithObjects:array state:state selector:@selector(setBackgroundImages:)];
}

- (void)setBackgroundImages:(NSArray *)array {
    id object = [array objectAtIndex:[ZinkSkinManager shareInstance].skinType];
    UIControlState state = [[array lastObject] unsignedIntegerValue];
    [self setBackgroundImage:object forState:state];
}

#pragma mark private
- (void)setSkinInfosWithObjects:(NSArray *)array
                          state:(UIControlState)state
                       selector:(SEL)selector {
    NSMutableArray *skinInfos = [NSMutableArray arrayWithArray:array];
    [skinInfos addObject:@(state)];
    [self setControlSkinInfos:skinInfos withSelector:selector];
}

@end
