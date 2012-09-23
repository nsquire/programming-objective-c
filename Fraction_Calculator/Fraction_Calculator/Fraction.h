//
//  Fraction.h
//  Fraction_Calculator
//
//  Created by Squire, Nicholas on 9/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

@property int numerator, denominator;

-(void)         print;
-(void)         setTo: (int) n over: (int) d;
-(Fraction *)   add: (Fraction *) f;
-(Fraction *)   subtract: (Fraction *) f;
-(Fraction *)   multiply: (Fraction *) f;
-(Fraction *)   divide: (Fraction *) f;
-(void)         reduce;
-(double)       convertToNum;
-(NSString *)   convertToString;

@end
