//
//  XYPoint.m
//  Chapter9
//
//  Created by Nicholas Squire on 7/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "XYPoint.h"

@implementation XYPoint

@synthesize x, y;

-(void) setX: (float)xVal andY: (float)yVal
{
    x = xVal;
    y = yVal;
}

-(void) print
{
    NSLog(@"(%f,%f)", x, y);
}

@end
