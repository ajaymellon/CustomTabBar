//
//  TabBarMenu.m
//  CustomTabBar
//
//  Created by Ajay Jha on 21/07/15.
//  Copyright (c) 2015 Ajay Jha. All rights reserved.
//

#import "TabBarMenu.h"

@implementation TabBarMenu
@synthesize delegate = _delegate;
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}
- (void)layoutSubviews {
    [super layoutSubviews];
    UIButton *btn1 = [[UIButton alloc]initWithFrame:CGRectMake(10, 10, 30, 30)];
    [btn1 setTitle:@"B 1" forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(btn1Tapped) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:btn1];
    
    UIButton *btn2 = [[UIButton alloc]initWithFrame:CGRectMake(self.frame.size.width/2-15, 10, 30, 30)];
    [btn2 addTarget:self action:@selector(btn2Tapped) forControlEvents:UIControlEventTouchUpInside];
    [btn2 setTitle:@"B 2" forState:UIControlStateNormal];
    [self addSubview:btn2];
    
    UIButton *btn3 = [[UIButton alloc]initWithFrame:CGRectMake(self.frame.size.width-45, 10, 30, 30)];
    [btn3 setTitle:@"B 3" forState:UIControlStateNormal];
    [btn3 addTarget:self action:@selector(btn3Tapped) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:btn3];

   }

-(void)btn1Tapped{
      [self.delegate tabMenuView:self buttonTapped:@"B 1"];
}

-(void)btn2Tapped{
      [self.delegate tabMenuView:self buttonTapped:@"B 2"];
}

-(void)btn3Tapped{
      [self.delegate tabMenuView:self buttonTapped:@"B 3"];
}
@end
