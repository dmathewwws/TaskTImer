//
//  StopwatchTimer.m
//  TaskTimer
//
//  Created by Veronica Baldys on 2015-01-03.
//  Copyright (c) 2015 Veronica Baldys. All rights reserved.
//

#import "StopwatchTimer.h"
@interface StopwatchTimer ()



@end

@implementation StopwatchTimer
{
    
}

- (NSString *)stringFromTimeInterval:(NSTimeInterval)interval {
    NSInteger ti = (NSInteger)interval;
    NSInteger seconds = ti % 60;
    NSInteger minutes = (ti / 60) % 60;
    NSInteger hours = (ti / 3600);
    return [NSString stringWithFormat:@"%02ld:%02ld:%02ld", (long)hours, (long)minutes, (long)seconds];
}

- (void)updateTimer:(NSTimer*)timer
{
    NSDate *currentDate = [NSDate date];
    // ::::this might not be necessray, try a counter instead?
    NSTimeInterval timeInterval = [currentDate timeIntervalSinceDate:self.startDate];
    NSLog(@"timeInterval: %f",timeInterval);
    
    self.timeElapsedString = [self stringFromTimeInterval:timeInterval];
    NSLog(@"%@", self.timeElapsedString);
    
    [self.delegate updateStopwatchTimerLabel];

}
- (void)start
{
   // if (!self.timer) {}  cehck if theres another timer running?
    NSLog(@"started timer");
    self.startDate = [NSDate date];
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(updateTimer:) userInfo:nil repeats:YES];
}

- (void)pause
{
    // get the current date, get the time elapsed and invalidate timer
    if (self.timer)
    {
        NSLog(@"paused timer");
        NSDate *pausedDate = [NSDate date];
        [self.timer invalidate];
        self.timer = nil;
        NSLog(@"time elapsed string at pause after invalidating the timer: %@", self.timeElapsedString);
        
        
        
        
    }

    
    
    
}

- (void)reset
{
    
}

- (NSString *)formattedDate
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"MMM dd, yyyy HH:mm:ss"];
    NSDate *dateTest = [NSDate date];
    NSLog(@"%@", [dateFormatter stringFromDate:dateTest]);
    return [dateFormatter stringFromDate:self.startDate];
}

@end
