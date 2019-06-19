//
//  CALayer+DTAdd.h
//  DTCategoriesDemo
//
//  Created by 树妖 on 2019/6/15.
//  Copyright © 2019 树妖. All rights reserved.
//
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CALayer (DTAdd)


/**
 设置阴影
 */
- (void)dt_setLayerShadow:(UIColor*)color
                   offset:(CGSize)offset
                   radius:(CGFloat)radius
                    alpha:(CGFloat)alpha;
@end

NS_ASSUME_NONNULL_END
