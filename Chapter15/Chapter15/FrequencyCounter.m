//
//  FrequencyCounter.m
//  Chapter15
//
//  Created by Nicholas Squire on 8/26/12.
//  Copyright (c) 2012 None. All rights reserved.
//

#import "FrequencyCounter.h"

@implementation FrequencyCounter

-(void) printFrequencies:(NSArray *)numberObjects
{
    NSCountedSet *frequencySet = [[NSCountedSet alloc] initWithArray:numberObjects];
    
    for (NSNumber *theNumber in frequencySet)
    {   
        NSLog(@"Number: %@, Count: %lu", theNumber, [frequencySet countForObject:theNumber]);
    }
}

@end
