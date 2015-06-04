//
//  ViewController.m
//  AutomaticCalculationFrameString
//
//  Created by Ceres on 15/6/4.
//  Copyright (c) 2015年 www.duoc.cn. All rights reserved.
//

#import "ViewController.h"
#import "NSString+AutomaticCalculationFrame.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *str = @"这是一个开心的世界也是一个悲惨的世界。这是一个开心的世界也是一个悲惨的世界。这是一个开心的世界也是一个悲惨的世界。这是一个开心的世界也是一个悲惨的世界。这是一个开心的世界也是一个悲惨的世界。";
    
    CGSize size1 = [NSString sizeOfMinFrameWithString:str font:[UIFont systemFontOfSize:13] maxWidth:320];
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 100, size1.width, size1.height)];
    label.backgroundColor = [UIColor grayColor];
    label.font = [UIFont systemFontOfSize:13];
    label.numberOfLines = 0;
    label.text = str;
    [self.view addSubview:label];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
