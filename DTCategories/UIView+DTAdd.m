//
//  UIView+DTAdd.m
//  DTCategoriesDemo
//
//  Created by 树妖 on 2019/6/12.
//  Copyright © 2019 树妖. All rights reserved.
//

#import "UIView+DTAdd.h"
@interface _DTLoadingView : UIView

@property (strong, nonatomic) UIActivityIndicatorView *indicatorView;
@property (strong, nonatomic) UILabel *indicatorLabel;
@end

@implementation _DTLoadingView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor colorWithRed:249/255.0 green:249/255.0 blue:249/255.0 alpha:1];
        
        [self setupViews];
    }
    return self;
}

- (void)setupViews {
    [self addSubview:self.indicatorView];
    self.indicatorView.center = self.center;
    
    [self addSubview:self.indicatorLabel];
    CGSize labelSize = [self.indicatorLabel.text boundingRectWithSize:CGSizeMake(1000, 1000) options:NSStringDrawingUsesDeviceMetrics attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:18]} context:nil].size;
    self.indicatorLabel.frame = CGRectMake(0, CGRectGetMaxY(self.indicatorView.frame)+15, labelSize.width, labelSize.height);
    self.indicatorLabel.center = CGPointMake(self.center.x, self.indicatorLabel.center.y);
}

- (UIActivityIndicatorView *)indicatorView {
    if (!_indicatorView) {
        _indicatorView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
        [_indicatorView startAnimating];
    }
    return _indicatorView;
}

- (UILabel *)indicatorLabel {
    if (!_indicatorLabel) {
        _indicatorLabel = [UILabel new];
        _indicatorLabel.text = @"正在加载，请稍候...";
    }
    return _indicatorLabel;
}

@end
@implementation UIView (DTAdd)
- (void)dt_showLoadingView {
    if ([self viewWithTag:10086]) {
        NSLog(@"loadingView已经存在，不要重复添加");
        return;
    }
    
    _DTLoadingView *loadingView = [[_DTLoadingView alloc] initWithFrame:self.bounds];
    loadingView.tag = 10086;
    [self addSubview:loadingView];
    
    loadingView.alpha = 0;
    [UIView animateWithDuration:0.3 animations:^{
        loadingView.alpha = 1;
    }];
}

- (void)dt_hideLoadingView {
    _DTLoadingView *loadingView = [self viewWithTag:10086];
    if (loadingView) {
        [UIView animateWithDuration:0.3 animations:^{
            loadingView.alpha = 0;
        } completion:^(BOOL finished) {
            [loadingView removeFromSuperview];
        }];
    }
}

@end
