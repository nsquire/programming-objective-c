//
//  Fraction.m
//  Chapter10
//
//  Created by Nicholas Squire on 7/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Fraction.h"

static int gAddCounter;

@implementation Fraction
{
    int numerator;
    int denominator; 
}

-(void) print
{
    NSLog (@"%i/%i", numerator, denominator);
}

-(void) setNumerator: (int) n
{
    numerator = n;
}

-(void) setDenominator: (int) d
{
    denominator = d;
}

-(int) numerator
{
    return numerator;
}

-(int) denominator
{
    return denominator;
}

-(double) convertToNum
{
    if (denominator != 0)
        return (double) numerator / denominator;
    else
        return NAN;
}

-(void) add: (Fraction *) f
{
    // Increment counter
    ++gAddCounter;
    
    // To add two fractions:
    // a/b + c/d = ((a*d) + (b*c)) / (b * d)
    
    numerator = numerator * f.denominator + denominator * f.numerator;
    denominator = denominator * f.denominator;
}

+(int) count
{
    return gAddCounter;
}

@end
