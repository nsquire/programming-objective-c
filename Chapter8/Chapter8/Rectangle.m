//
//  Rectangle.m
//  Chapter8
//
//  Created by Nicholas Squire on 6/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//


#import "Rectangle.h"
#import "XYPoint.h"

@implementation Rectangle

@synthesize height, width;

-(void) setHeight: (float)h andWidth: (float)w
{
    height = h;
    width = w;
}

-(float) area
{
    return height * width;
}

-(float) perimeter
{
    return (width + height) * 2;
}

@end
