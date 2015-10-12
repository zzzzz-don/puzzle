//
//  ViewController.m
//  puzzle
//
//  Created by 石井 秀彦 on 2015/10/12.
//  Copyright (c) 2015年 don. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImage *imageData = [UIImage imageNamed:@"inu.png"];
    
    UIImageView *iv = [[UIImageView alloc] init];
    iv.frame = CGRectMake(10, 20, 200, 300);
    [self.view addSubview:iv];
    
    iv.image = imageData;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
