//
//  NSObject+ZinkSkin.m
//  NightThem
//
//  Created by kfzx-linz on 16/5/30.
//  Copyright © 2016年 ICBC. All rights reserved.
//

#import "NSObject+ZinkSkin.h"
#import "NSObject+DeallocBlock.h"
#import "ZinkSkinManager.h"
#import <objc/runtime.h>

/**
 *  皮肤信息属性
 */
static void *kSkinInfo;
/**
 *  初始化属性，仅在初次设置皮肤信息时，调用一次
 */
static void *kSkinIntialize;

@implementation NSObject (ZinkSkin)

#pragma mark publicMethod
- (void)setViewSkinInfos:(NSArray *)array
      withSelector:(SEL)selector {
    id object = [array objectAtIndex:[ZinkSkinManager shareInstance].skinType];
    [self performSelector:selector withObject:object afterDelay:0];

    ZinkSkinInfo *skinInfo = [ZinkSkinInfo skinWithSelector:selector objects:array];
    NSMutableArray *skinInfos = [self skinInfos];
    [skinInfos addObject:skinInfo];
    [self setSkinInfos:skinInfos];
}

- (void)setControlSkinInfos:(NSArray *)array
               withSelector:(SEL)selector {
    [self performSelector:selector withObject:array afterDelay:0];
    
    ZinkSkinInfo *skinInfo = [ZinkSkinInfo skinWithSelector:selector objects:array];
    NSMutableArray *skinInfos = [self skinInfos];
    [skinInfos addObject:skinInfo];
    [self setSkinInfos:skinInfos];
}
#pragma mark privateMethod
- (NSMutableArray<ZinkSkinInfo *> *)skinInfos {
    NSMutableArray *skinInfos = objc_getAssociatedObject(self, &kSkinInfo);
    if (!skinInfos) {
        skinInfos = [NSMutableArray new];
    }
    
    return skinInfos;
}

- (void)setSkinInfos:(NSMutableArray<ZinkSkinInfo *> *)skinInfos {
    objc_setAssociatedObject(self, &kSkinInfo, skinInfos, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
    @autoreleasepool {
        // Need to removeObserver in dealloc
        if (objc_getAssociatedObject(self, &kSkinIntialize) == nil) {
            // NOTE: need to be __unsafe_unretained
            // Because __weak var will be reset to nil in dealloc
            __unsafe_unretained typeof(self) weakSelf = self;
            id deallocHelper = [self addDeallocBlock:^{
                [[NSNotificationCenter defaultCenter] removeObserver:weakSelf];
            }];
            objc_setAssociatedObject(self, &kSkinIntialize, deallocHelper, OBJC_ASSOCIATION_ASSIGN);
            
            if ([self isKindOfClass:[UIButton class]]) {
                [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(themeControlChangeNotification) name:kControlSkinChangeNotification object:nil];
            } else {
                [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(themeViewChangeNotification) name:kViewSkinChangeNotification object:nil];
            }
        }
    }
}

- (void)themeViewChangeNotification {
    NSMutableArray *skinInfos = [self skinInfos];
    for (ZinkSkinInfo *skinInfo in skinInfos) {
        SkinType skinType = [[ZinkSkinManager shareInstance] skinType];
        id object = [skinInfo.objects objectAtIndex:skinType];
        [self performSelector:skinInfo.selector withObject:object afterDelay:0];
    }
}

- (void)themeControlChangeNotification {
    NSMutableArray *skinInfos = [self skinInfos];
    for (ZinkSkinInfo *skinInfo in skinInfos) {
        [self performSelector:skinInfo.selector withObject:skinInfo.objects afterDelay:0];
    }
}

@end
