//
//  ViewController.m
//  CustomTabBar
//
//  Created by Ajay Jha on 21/07/15.
//  Copyright (c) 2015 Ajay Jha. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"


@interface ViewController ()<GetButtonListnerDelegate>
@property (weak, nonatomic) IBOutlet TabBarMenu *myView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.myView.delegate = self;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)tabMenuView:(TabBarMenu *)tabBarMenu buttonTapped:(NSString *)buttonName{
    NSLog(@"Button Name = %@",buttonName);
    
    if ([buttonName isEqualToString:@"B 1"]) {
          UIStoryboard *myStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        SecondViewController *secondViewControllerObj = [myStoryboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
        [self.navigationController showViewController:secondViewControllerObj sender:nil];
    }
  

}
@end
