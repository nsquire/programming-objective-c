//
//  Fraction.m
//  Chapter15
//
//  Created by Nicholas Squire on 8/19/12.
//  Copyright (c) 2012 None. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

@synthesize numerator, denominator;

-(void) setTo: (int) n over: (int) d
{
    numerator = n;
    denominator = d;
}

-(void) print
{
    NSLog (@"%i/%i", numerator, denominator);
}

-(double) convertToNum
{
    if (denominator != 0)
        return (double) numerator / denominator;
    else
        return NAN;
}

-(void) reduce
{
    int u = numerator;
    int v = denominator;
    int temp;
    
    if (u == 0)
        return;
    else if (u <0)
        u = -u;
    
    while (v != 0)
    {
        temp = u % v;
        u = v;
        v = temp;
    }
    
    numerator /= u;
    denominator /= u;
}

-(NSString *) description
{
    return [NSString stringWithFormat: @"%i/%i", numerator, denominator];
}

@end
