//
//  Task.h
//  TaskTimer
//
//  Created by Veronica Baldys on 2015-01-01.
//  Copyright (c) 2015 Veronica Baldys. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Task : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSDate *startDate;
@property NSTimeInterval timeSpent;

- (id)initWithName:(NSString *)name onDate:(NSDate *)startDate;

@end
