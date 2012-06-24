//
//  GraphicObject.m
//  Chapter8
//
//  Created by Nicholas Squire on 6/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "GraphicObject.h"
#import "XYPoint.h"

@implementation GraphicObject
{
    XYPoint *origin;
}

-(int) fillColor
{
    return fillColor;
}

-(void) setFillColor: (int) val
{
    fillColor = val;
}

-(BOOL) filled
{
    return filled;
}

-(void) setFilled: (BOOL) val
{
    filled = val;
}

-(int) lineColor
{
    return lineColor;
}

-(void) setLineColor: (int) val
{
    lineColor = val;
}

-(XYPoint *) origin
{
    return origin;
}

-(void) setOrigin: (XYPoint *) pt
{
    origin = pt;
}

-(void) translate: (XYPoint *)pt
{
    origin.x = pt.x;
    origin.y = pt.y;
}

@end
