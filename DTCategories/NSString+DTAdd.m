//
//  NSString+DTAdd.m
//  DTCategoriesDemo
//
//  Created by 树妖 on 2019/6/13.
//  Copyright © 2019 树妖. All rights reserved.
//

#import "NSString+DTAdd.h"
#include <CommonCrypto/CommonCrypto.h>
@implementation NSString (DTAdd)

+ (NSString *)dt_jsonStringEncodeFromObject:(id)anObject {
    if (![NSJSONSerialization isValidJSONObject:anObject]) {
        return nil;
    }
    NSError *error = nil;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:anObject options:0 error:&error];
    return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
}

- (id)dt_jsonStringDecode {
    NSData *jsonData = [self dataUsingEncoding:NSUTF8StringEncoding];
    NSError *error;
    id anObject = [NSJSONSerialization JSONObjectWithData:jsonData options:kNilOptions error:&error];
    if (error) {
        NSLog(@"jsonString转对象失败，error：%@",error);
    }
    
    return anObject;
}

- (NSString *)dt_md5String {
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(data.bytes, (CC_LONG)data.length, result);
    return [NSString stringWithFormat:
            @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
            result[0], result[1], result[2], result[3],
            result[4], result[5], result[6], result[7],
            result[8], result[9], result[10], result[11],
            result[12], result[13], result[14], result[15]
            ];
}

- (CGFloat)dt_widthForFont:(UIFont *)font {
    
    NSDictionary *attr = @{
                           NSFontAttributeName:font
                           };
    CGFloat width = [self boundingRectWithSize:CGSizeMake(HUGE, HUGE) options:NSStringDrawingUsesFontLeading | NSStringDrawingUsesLineFragmentOrigin attributes:attr context:nil].size.width;
    return width;
}

- (CGFloat)dt_heightForFont:(UIFont *)font width:(CGFloat)width {
    
    NSDictionary *attr = @{
                           NSFontAttributeName:font
                           };
    CGFloat height = [self boundingRectWithSize:CGSizeMake(width, HUGE) options:NSStringDrawingUsesFontLeading | NSStringDrawingUsesLineFragmentOrigin attributes:attr context:nil].size.height;
    return height;
}

+ (NSString *)dt_createUUID {
    CFUUIDRef uuid = CFUUIDCreate(NULL);
    CFStringRef string = CFUUIDCreateString(NULL, uuid);
    CFRelease(uuid);
    return (__bridge_transfer NSString *)string;
}

- (BOOL)dt_isMeaningful {
    if (self!=nil&&self.length>0&&![self isKindOfClass:[NSNull class]]) {
        return true;
    }
    return false;
}
@end
