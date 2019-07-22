//
//  UIImage+DTAdd.h
//  DTCategoriesDemo
//
//  Created by 树妖 on 2019/7/17.
//  Copyright © 2019 树妖. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (DTAdd)


/**
 调整图片大小
 
 可以有效降低图片内存占用
 
 注意比例，否则拉伸图片。size最好是按原图等比计算。
 */
- (UIImage *)dt_imageWithResize:(CGSize)size;


/**
 绘制纯色图片
 
 图片固定带下50*50,使用时进行拉伸，效果一样的
 */
+ (UIImage *)dt_drawImageWithColor:(UIColor *)color;


/**
 添加水印

 @param text 水印文字
 @param point 文字的起点位置
 
 注意：文字font是对应image的，如果image被缩放，那么文字font也会变化
 */
- (UIImage *)dt_waterWithText:(NSString *)text
                        point:(CGPoint)point
                   attributes:(NSDictionary *)attributes;


/**
 添加图片水印

 @param waterImage 水印图片
 @param rect 水印位置
 */
- (UIImage *)dt_watermarkWithWaterImgae:(UIImage *)waterImage
                                rect:(CGRect)rect;
@end

NS_ASSUME_NONNULL_END
