//
//  ViewController.m
//  XFStepProgress
//
//  Created by weihongfang on 2017/6/27.
//  Copyright © 2017年 weihongfang. All rights reserved.
//

#import "ViewController.h"
#import "XFStepView.h"

@interface ViewController ()

@property (strong, nonatomic)XFStepView *stepView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _stepView = [[XFStepView alloc]initWithFrame:CGRectMake(0, 50, self.view.frame.size.width, 60) Titles:[NSArray arrayWithObjects:@"第一步", @"第二步", @"第三步", @"第四步", @"第五步", nil]];
    
    [self.view addSubview:_stepView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickPer:(id)sender
{
    int step = _stepView.stepIndex;
    [_stepView setStepIndex:step - 1 Animation:YES];
}

- (IBAction)clickNext:(id)sender
{
    int step = _stepView.stepIndex;
    [_stepView setStepIndex:step + 1 Animation:YES];
}


@end
