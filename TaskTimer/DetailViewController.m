//
//  DetailViewController.m
//  TaskTimer
//
//  Created by Veronica Baldys on 2014-12-31.
//  Copyright (c) 2014 Veronica Baldys. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@property (weak, nonatomic) IBOutlet UIButton *startButton;
@property (weak, nonatomic) IBOutlet UIButton *pauseButton;
@property (weak, nonatomic) IBOutlet UIButton *resetButton;

@end

@implementation DetailViewController
 
- (void)configureView {
    // Update the user interface for the detail item.
    
    self.nameLabel.text = self.task.name;
    self.startDateLabel.text =  @" ";
    
    NSLog(@"configure view");

    //self.timerLabel.text = self.stopwatchTimer.timeElapsedString;

    //self.detailDescriptionLabel.text = [self.detailItem description];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"view did load");
    self.stopwatchTimer = [[StopwatchTimer alloc] init];
    self.stopwatchTimer.delegate = self;
    //self.timerLabel.text = self.stopwatchTimer.timeElapsedString;

    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    NSLog(@"view did appear");
    
    //self.timerLabel.text = self.stopwatchTimer.timeElapsedString;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)updateStopwatchTimerLabel
{
    self.timerLabel.text = self.stopwatchTimer.timeElapsedString;
}

- (IBAction)startButtonPressed:(id)sender
{
    NSLog(@"start button pressed");
    if (sender == self.startButton)
    {
        [self.stopwatchTimer start];
        self.startDateLabel.text = [self.stopwatchTimer formattedDate];
        self.timerLabel.text = self.stopwatchTimer.timeElapsedString;
        
        NSLog(@"****time elapsed string after start button pressed: %@", self.stopwatchTimer.timeElapsedString);
        
    }
}

- (IBAction)pauseButtonPressed:(id)sender
{
    NSLog(@"pause button pressed");
    if (sender == self.pauseButton)
    {
        [self.stopwatchTimer pause];
        
    }
}
@end
