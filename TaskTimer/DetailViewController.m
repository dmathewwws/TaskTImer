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

#pragma mark - Managing the detail item
/*
- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        
            
        // Update the view.
        [self configureView];
    }
}
*/
 
- (void)configureView {
    // Update the user interface for the detail item.
    
    self.nameLabel.text = self.task.name;
    self.startDateLabel.text =  @" ";
    
    //self.timerLabel.text = self.stopwatchTimer timeElapsedString
    
    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
        
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    //self.timerLabel.text = self.stopwatchTimer timeElapsedstring
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)startButtonPressed:(id)sender
{
    NSLog(@"start button pressed");
    if (sender == self.startButton)
    {
        self.stopwatchTimer = [[StopwatchTimer alloc] init];
        [self.stopwatchTimer start];
        self.startDateLabel.text = [self.stopwatchTimer formattedDate];
    }
}
@end
