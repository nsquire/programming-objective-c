//
//  Circle.m
//  Chapter8
//
//  Created by Nicholas Squire on 6/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Circle.h"

@implementation Circle

@synthesize radius;

-(float) area
{
    return 3.14 * (radius * radius);
}

-(float) circumfrence
{
    return 3.14 * 2 * radius;
}

@end
