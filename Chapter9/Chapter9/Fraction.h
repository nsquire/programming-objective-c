//
//  Fraction.h
//  Chapter9
//
//  Created by Nicholas Squire on 7/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

@property int numerator, denominator;

-(void) print;
-(void) setTo: (int) n over: (int) d;
-(double) convertToNum;
-(id) add: (id) f;
-(void) reduce;

@end
