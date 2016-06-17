//
//  GlobalManager.h
//  GasService
//
//  Created by Zink on 15/8/29.
//  Copyright (c) 2015年 Zink. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ZinkManager : NSObject

/**
 *  根据文本和字体获取size
 */
+ (CGSize)zinkGetSizeWithFont:(UIFont *)font
                      content:(NSString *)content
                      maxSize:(CGSize)sizeMax;

@end
