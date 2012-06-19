//
//  Fraction.m
//  Chapter7
//
//  Created by Nicholas Squire on 6/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

@synthesize numerator, denominator;

-(void) setTo: (int)n over: (int)d
{
    numerator = n;
    denominator = d;
}

-(void) print: (BOOL) reduce
{
    if (reduce == YES)
    {
        Fraction *reducedFraction = [[Fraction alloc] init];
        [reducedFraction setTo: numerator over: denominator];
        [reducedFraction reduce];
        [reducedFraction print: NO];
    }
    else
    {
        if ( numerator > denominator )
        {
            int quotient = numerator / denominator;
            int remainder = numerator % denominator;
            
            NSLog (@"%i %i/%i", quotient, remainder, denominator);
        } else {
            NSLog (@"%i/%i", numerator, denominator);
        }
    }
    
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

-(Fraction *) add: (Fraction *) f
{
    Fraction *result = [[Fraction alloc] init];
    
    // To add two fractions:
    // a/b + c/d = ((a*d) + (b*c)) / (b * d)
    
    result.numerator = numerator * f.denominator + denominator * f.numerator;
    result.denominator = denominator * f.denominator;
    
    [result reduce];
    return result;
}

-(Fraction *) subtract: (Fraction *) f
{
    Fraction *result = [[Fraction alloc] init];
    
    // To subtract two fractions:
    // a/b - c/d = ((a*d) - (b*c)) / (b * d)
    
    result.numerator = numerator * f.denominator - denominator * f.numerator;
    result.denominator = denominator * f.denominator;
    
    [result reduce];
    return result;
}

-(Fraction *) multiply: (Fraction *) f
{
    Fraction *result = [[Fraction alloc] init];
    
    // To multiply two fractions:
    // a/b * c/d = a*c / b*d
    
    result.numerator = numerator * f.numerator;
    result.denominator = denominator * f.denominator;
    
    [result reduce];
    return result;
}

-(Fraction *) divide: (Fraction *) f
{
    Fraction *result = [[Fraction alloc] init];
    
    // To multiply two fractions:
    // a/b / c/d = a*d / b*c
    
    result.numerator = numerator * f.denominator;
    result.denominator = denominator * f.numerator;
    
    [result reduce];
    return result;
}

-(void) reduce
{
    int u = numerator; 
    int v = denominator; 
    int temp;
    
    while (v != 0) 
    { 
        temp = u % v; 
        u = v;
        v = temp;
    }
    
    numerator /= u;
    denominator /= u;    
}

@end
