//
//  Rectangle.m
//  Chapter8
//
//  Created by Nicholas Squire on 6/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//


#import "Rectangle.h"
#import "XYPoint.h"
#import "GraphicObject.h"

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

-(BOOL) containsPoint: (XYPoint *) aPoint
{
    // aPoint.x has to be >= this.x and < aPoint.x + width
    // aPoint.y has to be >= this.y and < aPoint.y + height
    
    BOOL contained = false;
    
    if (aPoint.x >= self.origin.x && aPoint.x <= (self.origin.x + width)) {
        if (aPoint.y >= self.origin.y && aPoint.y <= (self.origin.y + height)) {
            contained = true;
        }
    }
    
    return contained;
}

-(Rectangle *) intersect: (Rectangle *) r
{
    Rectangle *intersectRectangle = [[Rectangle alloc] init];
    XYPoint *intersectPt = [[XYPoint alloc]init];
    intersectRectangle.origin = intersectPt;
    
    XYPoint *topLeft =  [[XYPoint alloc] init];
    [topLeft setX: r.origin.x andY: (r.origin.y + r.height)];
    BOOL contains = [self containsPoint: topLeft];
    
    if (contains == false) {
        [intersectRectangle setHeight: 0 andWidth: 0];
        [intersectPt setX: 0 andY: 0];
        return intersectRectangle;
    }
    
    float intersectX = r.origin.x;
    float intersectY = self.origin.y;
    
    float intersectHeight =  r.height - (self.origin.y - r.origin.y);
    float intersectWidth = (self.origin.x + self.width) - r.origin.x;
    
    [intersectPt setX: intersectX andY: intersectY];
    [intersectRectangle setHeight: intersectHeight andWidth: intersectWidth];
    
    return intersectRectangle;
}

@end
