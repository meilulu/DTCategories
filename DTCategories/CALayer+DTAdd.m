//
//  CALayer+DTAdd.m
//  DTCategoriesDemo
//
//  Created by 树妖 on 2019/6/15.
//  Copyright © 2019 树妖. All rights reserved.
//

#import "CALayer+DTAdd.h"

@implementation CALayer (DTAdd)
- (void)dt_setLayerShadow:(UIColor*)color
                   offset:(CGSize)offset
                   radius:(CGFloat)radius
                    alpha:(CGFloat)alpha {
    self.shadowColor = color.CGColor;
    self.shadowOffset = offset;
    self.shadowRadius = radius;
    self.shadowOpacity = alpha;
    self.shouldRasterize = YES;
    self.rasterizationScale = [UIScreen mainScreen].scale;
}
@end
