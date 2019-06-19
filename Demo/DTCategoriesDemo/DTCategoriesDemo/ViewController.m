//
//  ViewController.m
//  DTCategoriesDemo
//
//  Created by 树妖 on 2019/6/12.
//  Copyright © 2019 树妖. All rights reserved.
//

#import "ViewController.h"
#import "DTCategories.h"
@interface ViewController ()<UITextViewDelegate>
@property (strong, nonatomic) UITextView *textView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"点击" style:UIBarButtonItemStyleDone target:self action:@selector(doRightAction)];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"点击" style:UIBarButtonItemStyleDone target:self action:@selector(doLeftAction)];
}

- (void)doRightAction {
    [self.textView setPlaceholder:@"天上飞过一群天使"];
}

- (void)doLeftAction {
    UITextView *textView = [UITextView new];
    self.textView = textView;
    textView.backgroundColor = [UIColor yellowColor];
    textView.frame = CGRectMake(15, 200, self.view.bounds.size.width-30, 200);
    [self.view addSubview:textView];
    [textView setPlaceholder:@"请输入文字.."];
    textView.delegate = self;
    
    [textView.text addObserver:self forKeyPath:@"length" options:NSKeyValueObservingOptionNew context:nil];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    if ([keyPath isEqualToString:@"length"]) {
        NSLog(@"1111");
    }
}

- (void)textViewDidChange:(UITextView *)textView {
    NSLog(@"%@",textView.text);
}
@end
