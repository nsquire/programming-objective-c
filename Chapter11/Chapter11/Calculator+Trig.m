//
//  Calculator+Trig.m
//  Chapter11
//
//  Created by Nicholas Squire on 7/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Calculator+Trig.h"

@implementation Calculator (Trig)

-(double) sin
{
    return sin ([self accumulator]);
}

-(double) cos
{
    return cos ([self accumulator]);
}

-(double) tan
{
    return tan ([self accumulator]);
}

@end
