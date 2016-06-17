//
//  ViewController.h
//  mvc_cal
//
//  Created by apple on 16/6/7.
//  Copyright © 2016年 dyd. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "MainView.h"
#import "CalModel.h"
#import "CalModelDelegate.h"

@interface ViewController : UIViewController <CalModelDelegate>

@property (nonatomic, strong) MainView *mainView;

@property (nonatomic, strong) CalModel *model;

@end

