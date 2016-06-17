//
//  GlobalManager.m
//  GasService
//
//  Created by Zink on 15/8/29.
//  Copyright (c) 2015年 Zink. All rights reserved.
//

#import "ZinkManager.h"

@implementation ZinkManager

/**
 *  根据文本和字体获取size
 */
+ (CGSize)zinkGetSizeWithFont:(UIFont *)font
                  content:(NSString *)content
                  maxSize:(CGSize)sizeMax {
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    CGSize size = [content boundingRectWithSize:sizeMax
                                 options:NSStringDrawingUsesLineFragmentOrigin
                              attributes:@{NSFontAttributeName:font,
                                           NSParagraphStyleAttributeName:paragraphStyle}
                                 context:nil].size;
    
    return size;
}


@end
