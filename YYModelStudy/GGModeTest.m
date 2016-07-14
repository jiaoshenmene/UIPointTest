//
//  GGModeTest.m
//  UIPointTest
//
//  Created by dujia on 16/7/14.
//  Copyright © 2016年 sogou. All rights reserved.
//

#import "GGModeTest.h"
#import "YYModel.h"




@implementation GGModeTest

+ (NSDictionary *)modelContainerPropertyGenericClass
{
    return @{@"arr_test":@"GGModelArray",@"dictionary":[GGModelDictionary class]};
}

- (id)init
{
    if (self = [super init]) {
    }
    return self;
}

@end
