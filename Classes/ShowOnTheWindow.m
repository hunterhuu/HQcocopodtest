//
//  ShowOnTheWindow.m
//  HQcocopodtest
//
//  Created by huqi on 2018/8/30.
//  Copyright © 2018年 huqi. All rights reserved.
//

#import "ShowOnTheWindow.h"
#import <UIKit/UIKit.h>

@implementation ShowOnTheWindow

+ (void)showMethod {
    UILabel *showLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 20)];
    showLabel.text = @"克己忍耐";
    showLabel.textAlignment = NSTextAlignmentCenter;
    showLabel.textColor = [UIColor blackColor];
    showLabel.font = [UIFont systemFontOfSize:18];
    showLabel.alpha = 0;
    
    UIWindow *keyWindow = [UIApplication sharedApplication].keyWindow;
    
    showLabel.center = CGPointMake(CGRectGetMidX(keyWindow.frame), CGRectGetMidY(keyWindow.frame));

    [keyWindow addSubview:showLabel];
    [UIView animateWithDuration:5 animations:^{
        showLabel.alpha = 1;
    } completion:^(BOOL finished) {
        [showLabel removeFromSuperview];
    }];
}

@end
