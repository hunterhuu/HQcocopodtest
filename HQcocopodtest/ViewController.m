//
//  ViewController.m
//  HQcocopodtest
//
//  Created by huqi on 2018/8/30.
//  Copyright © 2018年 huqi. All rights reserved.
//

#import "ViewController.h"
#import "ShowOnTheWindow.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    button.center = CGPointMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame));
    button.backgroundColor = [UIColor redColor];
    [self.view addSubview:button];
}

- (void)buttonClick {
    [ShowOnTheWindow showMethod];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
