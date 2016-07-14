//
//  ViewController.m
//  UIPointTest
//
//  Created by sogou on 16/5/26.
//  Copyright © 2016年 sogou. All rights reserved.
//

#import "ViewController.h"
#import "MViewPointTest.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    MViewPointTest *test = [[MViewPointTest alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
//    [self.view addSubview:test];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(touchnum:)];
    tap.numberOfTapsRequired = 2;
    
    [self.view addGestureRecognizer:tap];
    
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
