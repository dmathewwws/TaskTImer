//
//  DetailViewController.h
//  TaskTimer
//
//  Created by Veronica Baldys on 2014-12-31.
//  Copyright (c) 2014 Veronica Baldys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

