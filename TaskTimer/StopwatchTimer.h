//
//  StopwatchTimer.h
//  TaskTimer
//
//  Created by Veronica Baldys on 2015-01-03.
//  Copyright (c) 2015 Veronica Baldys. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol StopwatchTimerDelegate <NSObject>

- (void)updateStopwatchTimerLabel;

@end


@interface StopwatchTimer : NSObject
{
    
}

@property (nonatomic, weak) id <StopwatchTimerDelegate> delegate;
@property (nonatomic, strong) NSTimer *timer;
@property (nonatomic, strong) NSDate *startDate;
@property (nonatomic, strong) NSString *timeElapsedString;

- (void)start;
- (void)pause;
- (void)reset;

// helper method
- (NSString *)stringFromTimeInterval:(NSTimeInterval)interval;

- (NSString *)formattedDate;

@end
