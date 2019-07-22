//
//  UIImage+DTAdd.m
//  DTCategoriesDemo
//
//  Created by 树妖 on 2019/7/17.
//  Copyright © 2019 树妖. All rights reserved.
//

#import "UIImage+DTAdd.h"

@implementation UIImage (DTAdd)
- (UIImage *)dt_imageWithResize:(CGSize)size {
    if (size.width <= 0 || size.height <= 0) return nil;
    UIGraphicsBeginImageContextWithOptions(size, NO, [UIScreen mainScreen].scale);
    [self drawInRect:CGRectMake(0, 0, size.width, size.height)];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

+ (UIImage *)dt_drawImageWithColor:(UIColor *)color {
    //size可以设置小点，占用内存小。然后添加到imageView进行拉伸，效果一样的
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(50, 50), false, [UIScreen mainScreen].scale);
    [color setFill];
    UIRectFill(CGRectMake(0, 0, 50, 50));
    UIImage *resultImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return resultImage;
}

- (UIImage *)dt_waterWithText:(NSString *)text
                        point:(CGPoint)point
                   attributes:(NSDictionary *)attributes {
    //开启图形上下文
    UIGraphicsBeginImageContextWithOptions(self.size, NO, [UIScreen mainScreen].scale);
    //绘制图片
    [self drawInRect:CGRectMake(0, 0, self.size.width, self.size.height)];
    //添加文字
    [text drawAtPoint:point withAttributes:attributes];
    //获取图片
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    //关闭上下文
    UIGraphicsEndImageContext();
    return newImage;
}

- (UIImage *)dt_watermarkWithWaterImgae:(UIImage *)waterImage
                                rect:(CGRect)rect {
    //开启图形上下文
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0);
    //绘制原图片
    [self drawInRect:CGRectMake(0, 0, self.size.width, self.size.height)];
    //绘制水印
    [waterImage drawInRect:rect];
    
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}
@end
