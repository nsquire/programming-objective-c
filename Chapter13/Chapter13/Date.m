//
//  Date.m
//  Chapter13
//
//  Created by Nicholas Squire on 8/4/12.
//
//

// #6

#import "Date.h"

@implementation Date

@synthesize month, day, year;

-(Date *) dateUpdate: (Date *) d
{
    
    Date *result = [[Date alloc] init];
    result.month = d.month;
    result.day = d.day + 1;
    result.year = d.year;
    
    return result;
}

@end
