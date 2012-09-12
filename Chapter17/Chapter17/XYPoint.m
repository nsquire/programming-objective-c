//
//  XYPoint.m
//  Chapter17
//
//  Created by Squire, Nicholas on 9/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "XYPoint.h"

@implementation XYPoint

@synthesize x, y;

-(void) setX: (int) xVal andY: (int) yVal
{
    x = xVal;
    y = yVal;
}

// Method for NSCopying protocol

- (id) copyWithZone: (NSZone *) zone
{
    id newXyPoint = [[[self class] allocWithZone: zone] init];
    [newXyPoint setX: x andY: y];
    
    return newXyPoint;
}

@end
