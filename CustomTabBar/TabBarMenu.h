//
//  TabBarMenu.h
//  CustomTabBar
//
//  Created by Ajay Jha on 21/07/15.
//  Copyright (c) 2015 Ajay Jha. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TabBarMenu;
@protocol GetButtonListnerDelegate

- (void)tabMenuView:(TabBarMenu *)tabBarMenu buttonTapped:(NSString *)buttonName;
@end


@interface TabBarMenu : UIView
@property (assign) id <GetButtonListnerDelegate> delegate;
@end
