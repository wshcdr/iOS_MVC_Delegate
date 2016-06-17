//
//  ViewController.m
//  mvc_cal
//
//  Created by apple on 16/6/7.
//  Copyright © 2016年 dyd. All rights reserved.
//

#import "ViewController.h"

#define deviceScreenWidth [[UIScreen mainScreen]bounds].size.width

#define deviceScreenHeight [[UIScreen mainScreen]bounds].size.height

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    

    
    _mainView = [[MainView alloc]initWithFrame:CGRectMake(0, 0, deviceScreenWidth, deviceScreenHeight)];
    
    [_mainView viewInit];
    
    [_mainView.calBtn addTarget:self action:@selector(calBtnPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    
    [self.view addSubview:_mainView];
    
    _model = [[CalModel alloc]init];
    _model.delegate = self;
    
}


- (void)calBtnPressed : (UIButton*)sender{
    int para1 = [self.mainView.para1Txt.text intValue];
    int para2 = [self.mainView.para2Txt.text intValue];
    [_model sum:para1 para2:para2];
}

- (void)sumGet:(int)value{
    
    _mainView.resultTxt.text = [NSString stringWithFormat:@"%d",value ] ;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"SumFinish" object:nil];
    _model = nil;
    _mainView = nil;
    
}
@end
