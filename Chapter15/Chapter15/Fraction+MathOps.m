//
//  Fraction+MathOps.m
//  Chapter15
//
//  Created by Nicholas Squire on 8/19/12.
//  Copyright (c) 2012 None. All rights reserved.
//

#import "Fraction+MathOps.h"

@implementation Fraction (MathOps)

-(Fraction *) add: (Fraction *) f
{
    // To add two fractions:
    // a/b + c/d = ((a*d) + (b*c)) / (b * d)
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = (self.numerator * f.denominator) + (self.denominator * f.numerator);
    result.denominator = self.denominator * f.denominator;
    
    [result reduce];
    return result;
}

-(Fraction *) sub: (Fraction *) f
{
    // To sub two fractions:
    // a/b - c/d = ((a*d) - (b*c)) / (b * d)
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = (self.numerator * f.denominator) - (self.denominator * f.numerator);
    result.denominator = self.denominator * f.denominator;
    
    [result reduce];
    return result;
}

-(Fraction *) mul: (Fraction *) f
{
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = self.numerator * f.numerator;
    result.denominator = self.denominator * f.denominator;
    
    [result reduce];
    return result;
}

-(Fraction *) div: (Fraction *) f
{
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = self.numerator * f.denominator;
    result.denominator = self.denominator * f.numerator;
    
    [result reduce];
    return result;
}

@end
