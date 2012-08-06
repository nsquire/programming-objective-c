//
//  Fraction.h
//  Chapter13
//
//  Created by Nicholas Squire on 7/31/12.
//
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

@property int numerator, denominator;

-(void) print;
-(void) setTo: (int) n over: (int) d;
-(double) convertToNum;
-(Fraction *) add: (Fraction *) f;
-(void) reduce;

@end
