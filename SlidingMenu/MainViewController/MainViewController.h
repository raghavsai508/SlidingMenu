//
//  MainViewController.h
//  SlidingMenu
//
//  Created by Raghav Sai Cheedalla on 8/6/15.
//  Copyright (c) 2015 Raghav Sai Cheedalla. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "MenuSelection.h"

@protocol AnimateCompletionProtocol <NSObject>

- (void)animateContainerView;

@end

@interface MainViewController : UIViewController <MenuSelectionProtocol>

@property (nonatomic, weak) id<AnimateCompletionProtocol> animationDelegate;


@end
