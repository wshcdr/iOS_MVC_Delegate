//
//  CalModel.m
//  mvc_cal
//
//  Created by apple on 16/6/7.
//  Copyright © 2016年 dyd. All rights reserved.
//

#import "CalModel.h"

@implementation CalModel

-(void) sum : (int)para1 para2:(int)para2
{
    _sum_rst = para1 + para2;
    [_delegate sumGet:_sum_rst];
}

-(int) getSum
{
    return _sum_rst;
}

@end
