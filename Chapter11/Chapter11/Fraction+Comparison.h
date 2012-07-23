//
//  Fraction+Comparison.h
//  Chapter11
//
//  Created by Nicholas Squire on 7/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Fraction.h"

@interface Fraction (Comparison)

-(BOOL) isEqualToFraction: (Fraction *) f;
-(int) compare: (Fraction *) f;

- (BOOL)isEqualTo:(id)object;
- (BOOL)isLessThanOrEqualTo:(id)object;
- (BOOL)isLessThan:(id)object;
- (BOOL)isGreaterThanOrEqualTo:(id)object; 
- (BOOL)isGreaterThan:(id)object;
- (BOOL)isNotEqualTo:(id)object;

@end
