//
//  AddTaskViewController.m
//  TaskTimer
//
//  Created by Veronica Baldys on 2015-01-01.
//  Copyright (c) 2015 Veronica Baldys. All rights reserved.
//

#import "AddTaskViewController.h"

@interface AddTaskViewController ()

@property (weak, nonatomic) IBOutlet UITextField *taskNameField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneButton;


@end

@implementation AddTaskViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if (sender != self.doneButton) return;
    
    if (self.taskNameField.text.length > 0)
    {
        self.taskItem = [[Task alloc] initWithName:self.taskNameField.text onDate:[NSDate date]];
        NSLog(@"%@", self.taskNameField.text);
    }
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}





@end
