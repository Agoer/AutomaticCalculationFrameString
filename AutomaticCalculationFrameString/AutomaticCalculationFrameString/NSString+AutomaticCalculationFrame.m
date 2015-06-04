//
//  NSString+AutomaticCalculationFrame.m
//  DuoC
//
//  Created by Ceres on 15/6/4.
//  Copyright (c) 2015年 www.duoc.cn. All rights reserved.
//

#import "NSString+AutomaticCalculationFrame.h"
#define iOS(version) (([[[UIDevice currentDevice] systemVersion] intValue] >= version)?1:0)
@implementation NSString (AutomaticCalculationFrame)

+ (CGSize)sizeOfMinFrameWithString:(NSString *)str font:(UIFont *)font maxWidth:(CGFloat) width
{
    CGSize size;
    
    if ([str isKindOfClass:[NSNull class]] || str.length <= 0) {
        return size;
    }
    
    if (iOS(6))
        size = [str sizeWithFont:font constrainedToSize:CGSizeMake(width, 1000) lineBreakMode:UILineBreakModeCharacterWrap];
    else
    {
        CGRect rect = [str boundingRectWithSize:CGSizeMake(width, 1000) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:font} context:nil];
        
        size = CGSizeMake(CGRectGetWidth(rect), CGRectGetHeight(rect));
        
    }
    
    
    
    
    return size;
}

@end
