//
//  Fraction.h
//  Chapter15
//
//  Created by Nicholas Squire on 8/19/12.
//  Copyright (c) 2012 None. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

@property int numerator, denominator;

-(void) setTo: (int) n over: (int) d;
-(void) reduce;
-(double) convertToNum;
-(void) print;
-(NSString *) description;

@end
