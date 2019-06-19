//
//  NSString+DTAdd.h
//  DTCategoriesDemo
//
//  Created by 树妖 on 2019/6/13.
//  Copyright © 2019 树妖. All rights reserved.
//

#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface NSString (DTAdd)


/**
 将NSArray、NSDictionary转为json String.

 @param anObject 一个NSArray、NSDictionary对象
 */
+ (NSString *)dt_jsonStringEncodeFromObject:(id)anObject;


/**
 将json string转为对象。对象可能是NSArray、NSDictionary
 */
- (id)dt_jsonStringDecode;


/**
 MD5加密
 
 返回的是小写字符串
 */
- (NSString *)dt_md5String;

/**
 字符串宽度
 */
- (CGFloat)dt_widthForFont:(UIFont *)font;


/**
 指定宽度下，字符串的高度
 */
- (CGFloat)dt_heightForFont:(UIFont *)font width:(CGFloat)width;


/**
 生成一个UUID
 
 返回是大写的
 */
+ (NSString *)dt_createUUID;



/**
 字符串是否有意义
 
 nil length==0 NSNULL 表示无意义
 */
- (BOOL)dt_isMeaningful;
@end

NS_ASSUME_NONNULL_END
