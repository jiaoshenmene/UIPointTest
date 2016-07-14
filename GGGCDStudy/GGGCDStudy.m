//
//  GGGCDStudy.m
//  GGGCDStudy
//
//  Created by dujia on 16/7/14.
//  Copyright © 2016年 sogou. All rights reserved.
//

#import "GGGCDStudy.h"

@implementation GGGCDStudy
+ (void) test{
    
    dispatch_semaphore_t sem = dispatch_semaphore_create(0);
    
    dispatch_queue_t queue = dispatch_queue_create("test", nil);
    dispatch_async(queue, ^{
        for (int j = 0; j < 4; j++) {
            NSLog(@"data = %i",j);
        }
        dispatch_semaphore_signal(sem);
    });
    dispatch_semaphore_wait(sem, DISPATCH_TIME_FOREVER);
    for (int i = 0; i < 9; i++) {
        NSLog(@"index = %i",i);
    }

}

@end
