//
//  NSDate+ElapsedDays.m
//  Chapter15
//
//  Created by Nicholas Squire on 8/5/12.
//  Copyright (c) 2012 None. All rights reserved.
//

#import "NSDate+ElapsedDays.h"

@implementation NSDate (ElapsedDays)

-(unsigned long) elapsedDays: (NSDate *) theDate
{
    //- (NSTimeInterval)timeIntervalSinceDate:(NSDate *)anotherDate
    NSTimeInterval elapsedInterval = [self timeIntervalSinceDate:theDate];
    
    NSTimeInterval secondsPerDay = 24 * 60 * 60;
    
    return (unsigned long) elapsedInterval / secondsPerDay;
}


@end
