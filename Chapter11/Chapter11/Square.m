//
//  Square.m
//  Chapter11
//
//  Created by Nicholas Squire on 7/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Square.h"

@implementation Square
{
    Rectangle *rect;
}

- (id)init {
    self = [self initWithSide: 0]; 
    return self; 
}

-(Square *) initWithSide: (int) s
{
    self = [super init];
    
    if (self) 
    {
        rect = [[Rectangle alloc] initWithWidth:s andHeight:s];
    }
    
    return self;
}

-(void) setSide: (int) s
{
    [rect setWidth:s andHeight:s];
}

-(int) side
{
    return [rect width];
}

-(int) area
{
    return [rect area]; 
}

-(int) perimeter
{
    return [rect perimeter]; 
}

@end
