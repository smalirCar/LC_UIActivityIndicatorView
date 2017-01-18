//
//  ViewController.m
//  LC_UIActivityIndicatorView
//
//  Created by 李成 on 2017/1/18.
//  Copyright © 2017年 liCheng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UIActivityIndicatorView *indicator;
@property (nonatomic, strong) UIButton *button;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor greenColor];
    [self createActivityIndicator];
    [self createActivityIndicator];
}

#pragma mark - 创建控制进度指示器是否出现的的 button
- (void)createControlAnimatingButton {
    self.button = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:_button];
    self.button.frame = CGRectMake(10, 10, 200, 100);
    [self.button setTitle:@"关闭" forState:UIControlStateNormal];
    [self.button addTarget:self action:@selector(startOrStop:) forControlEvents:UIControlEventTouchUpInside];
    
}

#pragma mark - button点击所触发的方法。 启动或关闭进度轮。
- (void)startOrStop:(id)sender{
    
    if([self.indicator isAnimating]){
        [self.indicator stopAnimating];
        [self.button setTitle:@"打开" forState:UIControlStateNormal];
    } else {
        [self.indicator startAnimating];
        [self.button setTitle:@"关闭" forState:UIControlStateNormal];
    }
}

#pragma mark - 创建活动指示器
- (void)createActivityIndicator {
    //初始化:
    self.indicator = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    
    //设置显示样式,见UIActivityIndicatorViewStyle的定义
    self.indicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyleWhiteLarge;
    //    indicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyleWhite;
    //    indicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyleGray;
    
    //设置显示位置
    [self.indicator setCenter:CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2)];
    
    //设置背景色
    self.indicator.backgroundColor = [UIColor grayColor];
    
    //设置背景透明
    self.indicator.alpha = 0.5;
    
    //设置背景为圆角矩形
    self.indicator.layer.cornerRadius = 6;
    self.indicator.layer.masksToBounds = YES;
    
    //将初始化好的indicator add到view中
    [self.view addSubview:self.indicator];
    
    //开始显示Loading动画
    [self.indicator startAnimating];
    
    //    //停止显示Loading动画
    //    [indicator stopAnimating];
}

#pragma mark - 其他
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
