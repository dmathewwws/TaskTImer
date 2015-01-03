//
//  Task.m
//  TaskTimer
//
//  Created by Veronica Baldys on 2015-01-01.
//  Copyright (c) 2015 Veronica Baldys. All rights reserved.
//

#import "Task.h"

@implementation Task


- (id)initWithName:(NSString *)name onDate:(NSDate *)startDate
{
    if (self = [super init])
    {
        self.name = name;
        self.startDate = startDate;
    }
    return self;
}

- (NSString *)formattedDate
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"MM dd, yyyy"];
    return [dateFormatter stringFromDate:self.startDate];
    
}

@end
