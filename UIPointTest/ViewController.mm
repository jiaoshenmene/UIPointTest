//
//  ViewController.m
//  UIPointTest
//
//  Created by sogou on 16/5/26.
//  Copyright © 2016年 sogou. All rights reserved.
//

#import "ViewController.h"
#import "MViewPointTest.h"
#import "YYModelStudy.h"

#import "GGGCDStudy.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
//    MViewPointTest *test = [[MViewPointTest alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
//    [self.view addSubview:test];
//    
//    
//    
    YYModelStudy *study = [[YYModelStudy alloc] init];
    [study test];
//
//    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(touchnum:)];
//    tap.numberOfTapsRequired = 2;
//    
//    [self.view addGestureRecognizer:tap];
//    
//    
//    
//    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    [btn setTitle:@"ff" forState:UIControlStateNormal];
//    btn.frame = CGRectMake(10, 100, 100, 50);
//    [btn addTarget:self action:@selector(btnMethod) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:btn];
//    
//    [self testMethod];
}

- (void)btnMethod
{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"notification1" object:nil];
     [[NSNotificationCenter defaultCenter] postNotificationName:@"notification12" object:nil];
}

- (void) testMethod
{
    dispatch_async(dispatch_get_main_queue(), ^{
        NSLog(@"dispatch_get_main_queue");
    });
    dispatch_queue_t queue = dispatch_queue_create("test", nil);
    dispatch_async(queue, ^{
        NSLog(@"dispatch_async");
    });
    
    dispatch_async(queue, ^{
        NSLog(@"dispatch_async1");
    });
    
    
    
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notification) name:@"notification" object:nil];
    
    
    
    
    
    
    
}

- (void)notification
{
    NSLog(@"notification");
}

- (void)notification1
{
    NSLog(@"notification1");
}

- (void)emojisTest
{
    NSString *str = @"\U0001f61c";
//    NSString *f = @"0xe04f";
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 200, 50)];
    label.text = str;//[NSString stringWithFormat:@"%C", 0x1F431];
    [self.view addSubview:label];
}

- (void) touchnum:(UITapGestureRecognizer *)tap
{
    NSLog(@"vvvvvvvvv");
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
