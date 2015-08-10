//
//  MainViewController.m
//  SlidingMenu
//
//  Created by Raghav Sai Cheedalla on 8/6/15.
//  Copyright (c) 2015 Raghav Sai Cheedalla. All rights reserved.
//

#import "MainViewController.h"
#import "ChatViewController.h"
#import "MemberViewController.h"
#import "SettingsViewController.h"
#import "CalendarViewController.h"

@interface MainViewController ()

@property (nonatomic, strong) ChatViewController        *chatViewController;
@property (nonatomic, strong) MemberViewController      *memberViewController;
@property (nonatomic, strong) SettingsViewController    *settingsViewController;
@property (nonatomic, strong) CalendarViewController    *calendarViewController;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self instantiateViewControllers];
}

- (void)instantiateViewControllers
{
    self.chatViewController = [self.storyboard instantiateViewControllerWithIdentifier:NSStringFromClass([ChatViewController class])];
    self.settingsViewController = [self.storyboard instantiateViewControllerWithIdentifier:NSStringFromClass([SettingsViewController class])];
    self.memberViewController = [self.storyboard instantiateViewControllerWithIdentifier:NSStringFromClass([MemberViewController class])];
    self.calendarViewController = [self.storyboard instantiateViewControllerWithIdentifier:NSStringFromClass([CalendarViewController class])];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)menuSelected:(SelectedMenuItem)menuitem
{
    [self.navigationController popToRootViewControllerAnimated:NO];
    switch (menuitem) {
        case CHAT:
            [self.navigationController pushViewController:self.chatViewController animated:NO];
            break;
        case SETTINGS:
            [self.navigationController pushViewController:self.settingsViewController animated:NO];
            break;
        case MEMBER:
            [self.navigationController pushViewController:self.memberViewController animated:NO];
            break;
        case CALENDAR:
            [self.navigationController pushViewController:self.calendarViewController animated:NO];
            break;
        default:
            break;
    }
    [self.animationDelegate animateContainerView];
}

@end
