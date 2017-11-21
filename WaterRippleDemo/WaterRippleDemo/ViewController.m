//
//  ViewController.m
//  WaterRippleDemo
//
//  Created by lsh726 on 2017/11/21.
//  Copyright © 2017年 liusonghong. All rights reserved.
//

#import "ViewController.h"
#import "RippleView.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    RippleView *mainV = [[RippleView alloc] initWithFrame:CGRectMake(0.0, 200.0, self.view.frame.size.width, 100.0)];
    [self.view addSubview:mainV];
    mainV.backgroundColor = [UIColor lightGrayColor];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
