//
//  MainView.m
//  mvc_cal
//
//  Created by apple on 16/6/7.
//  Copyright © 2016年 dyd. All rights reserved.
//

#import "MainView.h"

@implementation MainView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)viewInit {
    
    _calBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [_calBtn setFrame:CGRectMake(50, 50, 150, 80)];
    
    [_calBtn setTitle:@"Calculate" forState:UIControlStateNormal];
    
    [_calBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    [self addSubview:_calBtn];
    
    
    _para1Txt = [[UITextField alloc] initWithFrame:CGRectMake(10, 20, 60, 40)];
    _para1Txt.borderStyle = UITextBorderStyleRoundedRect;
    _para1Txt.font = [UIFont systemFontOfSize:15];
    [self addSubview:_para1Txt];
    
    _para2Txt = [[UITextField alloc] initWithFrame:CGRectMake(160, 20, 60, 40)];
    _para2Txt.borderStyle = UITextBorderStyleRoundedRect;
    _para2Txt.font = [UIFont systemFontOfSize:15];
    [self addSubview:_para2Txt];
    
    _resultTxt = [[UITextField alloc] initWithFrame:CGRectMake(250, 20, 60, 40)];
    _resultTxt.borderStyle = UITextBorderStyleRoundedRect;
    _resultTxt.font = [UIFont systemFontOfSize:15];
    [self addSubview:_resultTxt];
    
    _plusTxt = [[UITextField alloc] initWithFrame:CGRectMake(90, 20, 30, 40)];
    _plusTxt.borderStyle = UITextBorderStyleRoundedRect;
    _plusTxt.font = [UIFont systemFontOfSize:15];
    [self addSubview:_plusTxt];
    
    _plusTxt.text = @"+";
    _plusTxt.enabled = false;
}

@end
