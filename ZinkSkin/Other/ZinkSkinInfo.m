//
//  ZinkSkinInfo.m
//  NightThem
//
//  Created by kfzx-linz on 16/5/30.
//  Copyright © 2016年 ICBC. All rights reserved.
//

#import "ZinkSkinInfo.h"

@implementation ZinkSkinInfo

+ (ZinkSkinInfo *)skinWithSelector:(SEL)selector objects:(NSArray *)objects {
    ZinkSkinInfo *skinInfo = [ZinkSkinInfo new];
    skinInfo.selector = selector;
    skinInfo.objects = objects;
    return skinInfo;
}

@end
