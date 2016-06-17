//
//  MainView.h
//  mvc_cal
//
//  Created by apple on 16/6/7.
//  Copyright © 2016年 dyd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainView : UIView

@property (nonatomic, strong) UIButton *calBtn;

@property (nonatomic, strong) UITextField *para1Txt;

@property (nonatomic, strong) UITextField *para2Txt;

@property (nonatomic, strong) UITextField *resultTxt;

@property (nonatomic, strong) UITextField *plusTxt;

- (void)viewInit;  //init

@end
