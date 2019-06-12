//
//  UIButton+DTAdd.h
//  DTCategories
//
//  Created by 树妖 on 2019/6/12.
//  Copyright © 2019 树妖. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (DTAdd)
/**
 *  倒计时按钮
 *
 *  @param timeLine 倒计时总长
 *  @param title    还没开始倒计时时的标题
 *  @param subTitle 倒计时过程中的子名字
 *  @param mColor   还没倒计时时的颜色
 *  @param color    倒计时时的颜色
 */
- (void)dt_startWithTime:(NSInteger)timeLine title:(NSString *)title countDownTitle:(NSString *)subTitle mainColor:(UIColor *)mColor countColor:(UIColor *)color;
@end

NS_ASSUME_NONNULL_END
