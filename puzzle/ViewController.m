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
    
    // オリジナル画像を読み込み
    UIImage *imageData = [UIImage imageNamed:@"inu.png"];
    
    // オリジナル画像をCGImageRef型に変換
    CGImageRef imageDataRef = [imageData CGImage];
    
    // GCImageRef型のデータを利用してトリミング
    CGImageRef trimmedImageDataRef =
    CGImageCreateWithImageInRect(imageDataRef, CGRectMake(0, 0, 200, 100));
    
    // トリミングしたデータをUIImageクラスに戻す
    UIImage *trimmedImageData = [UIImage imageWithCGImage:trimmedImageDataRef];
    
    // イメージビューの用意
    UIImageView *iv = [[UIImageView alloc] init];
    iv.frame = CGRectMake(10, 20, 200, 100);
    [self.view addSubview:iv];
    
    // イメージビューに画像を貼り付ける
    iv.image = trimmedImageData;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
