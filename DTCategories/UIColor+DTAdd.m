//
//  UIColor+DTAdd.m
//  DTCategoriesDemo
//
//  Created by 树妖 on 2019/6/12.
//  Copyright © 2019 树妖. All rights reserved.
//

#import "UIColor+DTAdd.h"

@implementation UIColor (DTAdd)

+ (UIColor *)dt_colorWithR:(NSInteger)r g:(NSInteger)g b:(NSInteger)b {
    return [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1];
}

+ (UIColor *)dt_colorWithR:(NSInteger)r g:(NSInteger)g b:(NSInteger)b alpha:(CGFloat)alpha {
    return [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:alpha];
}

+ (UIColor *)dt_randomColor {
    NSInteger r = arc4random() % 255;
    NSInteger g = arc4random() % 255;
    NSInteger b = arc4random() % 255;
    
    return [self dt_colorWithR:r g:g b:b];
}
@end
