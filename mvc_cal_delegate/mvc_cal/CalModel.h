//
//  CalModel.h
//  mvc_cal
//
//  Created by apple on 16/6/7.
//  Copyright © 2016年 dyd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CalModelDelegate.h"

@interface CalModel : NSObject{
    NSObject<CalModelDelegate> * delegate;
}

@property (nonatomic)int sum_rst;
@property(nonatomic, retain) NSObject<CalModelDelegate> * delegate;

-(void) sum : (int)para1 para2:(int)para2;

-(int) getSum;
@end
