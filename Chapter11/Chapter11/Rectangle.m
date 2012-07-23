//
//  Rectangle.m
//  Chapter10
//
//  Created by Nicholas Squire on 7/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle
{
    XYPoint *origin;
}

@synthesize width, height;

-(id) initWithWidth: (int) w andHeight: (int) h
{
    self = [super init]; 
    
    if (self) {
        [self setWidth: w andHeight: h];
    }
        
    return self;
}

-(void) setWidth: (int) w andHeight: (int) h 
{
    width = w;
    height = h; 
}

-(XYPoint *) origin
{
    return origin;
}

-(void) setOrigin: (XYPoint *) pt 
{
    origin = pt; 
}

-(int) area
{
    return width * height;
}

-(int) perimeter
{
    return (width + height) * 2;
}

@end
