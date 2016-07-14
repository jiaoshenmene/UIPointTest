//
//  MViewPointTest.m
//  UIPointTest
//
//  Created by sogou on 16/5/26.
//  Copyright © 2016年 sogou. All rights reserved.
//

#import "MViewPointTest.h"

@implementation MViewPointTest


- (id) initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
    
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notification133) name:@"notification12" object:nil];
        
    }
    return self;
}

- (void)notification133
{
    NSLog(@"notification0000000000");
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
