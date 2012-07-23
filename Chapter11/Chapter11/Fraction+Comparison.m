//
//  Fraction+Comparison.m
//  Chapter11
//
//  Created by Nicholas Squire on 7/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Fraction+Comparison.h"

@implementation Fraction (Comparison)

-(BOOL) isEqualToFraction: (Fraction *) f
{
    Fraction *firstFraction = [[Fraction alloc] init];
    Fraction *secondFraction = [[Fraction alloc] init];
    
    [firstFraction setTo: self.numerator over: self.denominator]; 
    [secondFraction setTo: f.numerator over: f.denominator];
    
    [firstFraction reduce];
    [secondFraction reduce];
    
    //Two fractions a/b and c/d are equal if and only if ad = bc
    if ((firstFraction.numerator * secondFraction.denominator) == (firstFraction.denominator * secondFraction.numerator)) {
        return YES;
    }
    else
    {
        return NO;
    }
}

-(int) compare: (Fraction *) f
{
    Fraction *firstFraction = [[Fraction alloc] init];
    Fraction *secondFraction = [[Fraction alloc] init];
    
    [firstFraction setTo: self.numerator over: self.denominator]; 
    [secondFraction setTo: f.numerator over: f.denominator];
    
    // Check for equality
    if ([firstFraction isEqualTo: secondFraction])
    {
        return 0;
    }
    
    // a/b < c/d when ad < bc (-1)
    // a/b > c/d when ad > bc (+1)
    if ((firstFraction.numerator * secondFraction.denominator) < (firstFraction.denominator * secondFraction.numerator)) {
        return -1;
    }
    else if ((firstFraction.numerator * secondFraction.denominator) > (firstFraction.denominator * secondFraction.numerator))
    {
        return 1;
    } 
    else 
    {
        return NAN;
    }
}

- (BOOL)isEqualTo:(id)object
{
    return [self isEqualToFraction:object];
}

- (BOOL)isLessThanOrEqualTo:(id)object
{
    if ([self isEqualToFraction:object]) {
        return YES;
    }
    else if ([self compare:object] == -1)
    {
        return YES;
    }
    else
    {
        return NO;
    }
}

- (BOOL)isLessThan:(id)object
{
    if ([self compare:object] == -1)
    {
        return YES;
    }
    else
    {
        return NO;
    }
}

- (BOOL)isGreaterThanOrEqualTo:(id)object
{
    if ([self isEqualToFraction:object]) {
        return YES;
    }
    else if ([self compare:object] == 1)
    {
        return YES;
    }
    else
    {
        return NO;
    }
}

- (BOOL)isGreaterThan:(id)object
{
    if ([self compare:object] == 1)
    {
        return YES;
    }
    else
    {
        return NO;
    }
}

- (BOOL)isNotEqualTo:(id)object
{
    if ([self isEqualTo:object]) {
        return NO;
    }
    else
    {
        return YES;
    }
}

@end
