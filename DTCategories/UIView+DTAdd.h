//
//  UIView+DTAdd.h
//  DTCategoriesDemo
//
//  Created by 树妖 on 2019/6/12.
//  Copyright © 2019 树妖. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (DTAdd)

/**
 显示一个loadView
 */
- (void)dt_showLoadingView;


/**
 关闭上面的loadView
 */
- (void)dt_hideLoadingView;
@end

NS_ASSUME_NONNULL_END
