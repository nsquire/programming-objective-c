//
//  main.m
//  Chapter15
//
//  Created by Nicholas Squire on 8/5/12.
//  Copyright (c) 2012 None. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "NSDate+ElapsedDays.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // #1
        NSDate *today = [NSDate date];
        NSDate *past = [NSDate distantPast];
        NSLog(@"Elapsed days: %lu", [today elapsedDays:past]);
        
        
        
    }
    return 0;
}

