//
//  SecondViewController.m
//  CustomTabBar
//
//  Created by Ajay Jha on 21/07/15.
//  Copyright (c) 2015 Ajay Jha. All rights reserved.
//

#import "SecondViewController.h"
#import "TabBarMenu.h"

@interface SecondViewController ()<GetButtonListnerDelegate>
@property (weak, nonatomic) IBOutlet TabBarMenu *tabBarMenu;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tabBarMenu.delegate = self;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tabMenuView:(TabBarMenu *)tabBarMenu buttonTapped:(NSString *)buttonName{
    NSLog(@"Button Name = %@",buttonName);
       
}

@end
