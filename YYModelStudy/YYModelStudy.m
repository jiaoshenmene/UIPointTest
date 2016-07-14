//
//  YYModelStudy.m
//  YYModelStudy
//
//  Created by dujia on 16/7/14.
//  Copyright © 2016年 sogou. All rights reserved.
//

#import "YYModelStudy.h"
#import "YYModel.h"
#import "GGModeTest.h"


@implementation YYModelStudy



- (void)test{
    
    NSArray *array1 = @[@{@"array_name":@"lili"},@{@"array_name":@"lili"}];
    
    
    NSDictionary *dic = @{@"name":@"xiaoming",@"dic_test":@{@"dic_name":@"mmmm"},@"arr_test":array1};
    
    
    
    GGModeTest *mode = [[GGModeTest alloc] init];
    
    [mode yy_modelSetWithJSON:dic];
    
    
    NSLog(@"mode = %@",mode.name);
    NSLog(@"%@",[[mode.arr_test objectAtIndex:0] array_name]);
    NSLog(@"array = %@",mode.dic_test.dic_name);
//    NSLog(<#NSString * _Nonnull format, ...#>)
}



- (void)notification133
{
    NSLog(@"notification0000000000");
}

@end
