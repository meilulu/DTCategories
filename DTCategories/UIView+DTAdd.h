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

/**
 快照
 
 和系统方法『snapshotViewAfterScreenUpdates:』作用一致。只是这里返回image
 */
- (UIImage *)dt_snapshotImage;


/**
 和snapshotImage作用一致，但是速度更快。（一般就用这个）
 
 @param afterUpdates 和snapshotViewAfterScreenUpdates:中的参数一致。
 表示是否考虑视图的属性修改
 比如：
 self.view.alpha = 0;
 UIImage *image = [self.view snapshotImageAfterScreenUpdates:false];
 
 false：快照是设置alpha=0之后；true：快照是设置alpha=0之前。
 */
- (UIImage *)dt_snapshotImageAfterScreenUpdates:(BOOL)afterUpdates;
@end

NS_ASSUME_NONNULL_END
