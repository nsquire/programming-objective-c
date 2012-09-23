//
//  Calculator.h
//  Fraction_Calculator
//
//  Created by Squire, Nicholas on 9/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

@interface Calculator : NSObject

@property (strong, nonatomic) Fraction *operand1, *accumulator;

-(Fraction *) performOperation: (char) op;
-(void) clear;

@end
