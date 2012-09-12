//
//  Rectangle.m
//  Chapter17
//
//  Created by Squire, Nicholas on 9/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle
{
    XYPoint *origin;
}

@synthesize width, height;

-(XYPoint *) origin
{
    return origin;
}

-(void) setOrigin: (XYPoint *) pt
{
    origin = pt;
}

-(void) setWidth: (int) w andHeight: (int) h
{
    width = w;
    height = h;
}

-(int) area
{
    return width * height;
}

-(int) perimeter
{
    return (width + height) * 2;
}

// Method for NSCopying protocol

- (id) copyWithZone: (NSZone *) zone
{
    id newRectangle = [[[self class] allocWithZone: zone] init];
    [newRectangle setWidth: width];
    [newRectangle setHeight: height];
    [newRectangle setOrigin: [origin copy]];
    
    return newRectangle;
}


@end
