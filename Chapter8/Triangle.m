//
//  Triangle.m
//  Chapter8
//
//  Created by Nicholas Squire on 6/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Triangle.h"

@implementation Triangle

@synthesize vertHeight, sideA, sideB, sideC;

-(void) setSideA: (float) a andSideB: (float) b andSideC: (float) c andVertHeight: (float) h
{
    sideA = a;
    sideB = b;
    sideC = c;
    vertHeight = h;
}


-(float) area
{
    return .5 * sideA * vertHeight;
}

-(float) perimeter
{
    return sideA + sideB + sideC;
}

@end
