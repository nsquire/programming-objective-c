//
//  Complex.m
//  Chapter7
//
//  Created by Nicholas Squire on 6/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Complex.h"

@implementation Complex

@synthesize real, imaginary;

-(void) print
{
    NSLog(@"%g + %gi", real, imaginary);
}

-(Complex *) add: (Complex *) complexNum
{
    // (5.3 + 7i) + (2.7 + 4i) = 8 + 11i
    
    Complex *result = [[Complex alloc] init];
    
    result.real = real + complexNum.real;
    result.imaginary = imaginary + complexNum.imaginary;
    
    return result;
}


@end
