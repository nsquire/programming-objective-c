//
//  Fraction+Comparison.m
//  Chapter15
//
//  Created by Nicholas Squire on 8/19/12.
//  Copyright (c) 2012 None. All rights reserved.
//

#import "Fraction+Comparison.h"

@implementation Fraction (comparison)

-(NSComparisonResult) compareFractions: (id) element
{
    NSNumber *aNum = [[NSNumber alloc] initWithDouble: self.convertToNum];
    NSNumber *bNum = [[NSNumber alloc] initWithDouble: [element convertToNum]];
                      
    return [aNum compare: bNum];
}

@end
