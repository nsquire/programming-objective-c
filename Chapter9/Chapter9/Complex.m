//
//  Complex.m
//  Chapter9
//
//  Created by Nicholas Squire on 7/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Complex.h"

@implementation Complex

@synthesize real, imaginary;

-(void) print 
{
    NSLog (@" %g + %gi ", real, imaginary); 
}

-(void) setReal: (double) a andImaginary: (double) b 
{
    real = a;
    imaginary = b; 
}

-(id) add: (id) f 
{
    id result = [[Complex alloc] init];
    
    [result setReal: real + [f real]]; 
    [result setImaginary: imaginary + [f imaginary]];
    
    return result; 
}

@end
