//
//  DetailViewController.h
//  TaskTimer
//
//  Created by Veronica Baldys on 2014-12-31.
//  Copyright (c) 2014 Veronica Baldys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Task.h"
#import "StopwatchTimer.h"

@interface DetailViewController : UIViewController <StopwatchTimerDelegate>

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@property (nonatomic, strong) Task *task;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *startDateLabel;
@property (nonatomic, strong) IBOutlet UILabel *timerLabel;
@property (nonatomic, strong) StopwatchTimer *stopwatchTimer;


- (IBAction)startButtonPressed:(id)sender;
- (IBAction)pauseButtonPressed:(id)sender;



@end

