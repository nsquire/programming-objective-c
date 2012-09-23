//
//  Calculator.m
//  Fraction_Calculator
//
//  Created by Squire, Nicholas on 9/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

@synthesize operand1, accumulator;

-(id) init
{
    self = [super init];
    
    if (self) {
        operand1 = [[Fraction alloc] init];
        accumulator = [[Fraction alloc] init];
    }
    
    return self;
}

-(void) clear
{
    accumulator.numerator = 0;
    accumulator.denominator = 0;
}

-(Fraction *) performOperation: (char) op
{
    Fraction *result;
    
    switch (op) {
        case '+':
            result = [accumulator add: operand1];
            break;
        case '-':
            result = [accumulator subtract: operand1];
            break;
        case '*':
            result = [accumulator multiply: operand1];
            break;
        case '/':
            result = [accumulator divide: operand1];
            break;
    }
    
    accumulator.numerator = result.numerator;
    accumulator.denominator = result.denominator;
    
    return accumulator;
}

@end
