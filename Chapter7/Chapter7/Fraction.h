//
//  Fraction.h
//  Chapter7
//
//  Created by Nicholas Squire on 6/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

@property int numerator, denominator;

-(void) print: (BOOL) reduce;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
-(int) numerator;
-(int) denominator;
-(double) convertToNum;
-(void) setTo: (int) n over: (int) d;
-(Fraction *) add: (Fraction *) f;
-(void) reduce;

// Subtract argument from receiver
-(Fraction *) subtract: (Fraction *) f;

// Multiply receiver by argument
-(Fraction *) multiply: (Fraction *) f;

// Divide receiver by argument
-(Fraction *) divide: (Fraction *) f;

@end
