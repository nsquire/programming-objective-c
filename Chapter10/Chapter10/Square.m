//
//  Square.m
//  Chapter10
//
//  Created by Nicholas Squire on 7/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Square.h"

@implementation Square

-(id) initWithSide: (int) side
{
    self = [super init];
    
    if (self) {
        [self setSide: side];
    }
    
    return self;
}

-(void) setSide: (int) s
{
    [self setWidth: s andHeight: s];
}

-(int) side
{
    return self.width;
}

@end
