//
//  Fraction.h
//  Chapter10
//
//  Created by Nicholas Squire on 7/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
-(int) numerator;
-(int) denominator;
-(double) convertToNum;
-(void) add: (Fraction *) f;
+(int) count;

@end
