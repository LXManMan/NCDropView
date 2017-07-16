//
//  ViewController.m
//  NCDropView
//
//  Created by zhongzhi on 2017/7/14.
//  Copyright © 2017年 zhongzhi. All rights reserved.
//

#import "ViewController.h"
#import "LXDropView.h"
@interface ViewController ()
@property(nonatomic,strong)LXDropView *dropView;
@property(nonatomic,strong)UIView *tempView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.tempView =[[UIView alloc]initWithFrame:CGRectMake(10, 100, 300, 400)];
    self.tempView.backgroundColor =[UIColor cyanColor];
    [self.view addSubview:self.tempView];
    
    LxButton *button = [LxButton LXButtonWithTitle:@"请选择车牌号" titleFont:Font(14) Image:nil backgroundImage:nil backgroundColor:[UIColor blueColor] titleColor:[UIColor blackColor] frame:CGRectMake(20, 100, 100, 40)];
    [self.tempView addSubview:button];

    
    UIWindow *window =[UIApplication sharedApplication].windows.lastObject;
    NSLog(@"%@",[UIApplication sharedApplication].windows);

  CGPoint  point = [window convertPoint:CGPointMake(button.frame.origin.x, button.frame.origin.y+ button.frame.size.height) fromView:self.tempView];
    
    self.dropView =[[LXDropView alloc]initWithTitleArray:@[@"国家经济见附件啊",@"噶个人；人孔盖看看",@"噶人看过卡"] orignPoint:point listWidth:Device_Width/2 selectResult:^(NSInteger index) {
        
    }];

    NCWS(weakSelf);
    [button addClickBlock:^(UIButton *button) {
        [weakSelf.dropView show];
    }];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
