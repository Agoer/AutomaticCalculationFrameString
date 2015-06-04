//
//  NSString+AutomaticCalculationFrame.h
//  DuoC
//  //计算所需的最小frame
//  Created by Ceres on 15/6/4.
//  Copyright (c) 2015年 www.duoc.cn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (AutomaticCalculationFrame)

+ (CGSize)sizeOfMinFrameWithString:(NSString *)str font:(UIFont *)font maxWidth:(CGFloat) width;

@end
