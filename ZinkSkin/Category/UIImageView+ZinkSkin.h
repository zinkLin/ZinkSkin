//
//  UIImageView+ZinkSkin.h
//  NightThem
//
//  Created by kfzx-linz on 16/5/31.
//  Copyright © 2016年 ICBC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (ZinkSkin)

/**
 *  将各个皮肤对应的文本颜色传入数组
 */
- (void)zinkSetSkinWithImages:(NSArray<UIImage *> *)array;

@end
