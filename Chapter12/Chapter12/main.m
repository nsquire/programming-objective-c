//
//  main.m
//  Chapter12
//
//  Created by Nicholas Squire on 7/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#define MIN(a,b) ( ((a) < (b)) ? (a) : (b) )

#define MAX(a,b) ( ((a) > (b)) ? (a) : (b) )

#define IS_UPPER_CASE(x) ( ((x) >= 'A') && ((x) <= 'Z') )
#define IS_LOWER_CASE(x) ( ((x) >= 'a') && ((x) <= 'z') )

#define IS_ALPHABETIC(x) ( (IS_LOWER_CASE(x)) || (IS_UPPER_CASE(x)) )

#define IS_DIGIT(x) ( ((x) >= '0') && ((x) <= '9') )

#define IS_SPECIAL(x) !IS_ALPHABETIC(x) && !IS_DIGIT(x)

#define MAX3(a,b,c) MAX(MAX(a,b), c)

#define ABSOLUTE_VALUE(x) ( ((x) > (0)) ? (x) : ((x) * -1) )

#import <Foundation/Foundation.h>



int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Min value of 1 and 2: %i", MIN(1, 2));
        
        NSLog(@"MAX3 value of 1, 2 and 3: %i", MAX3(1, 2, 3));
        
        NSLog(@"Is x upper?: %i", IS_UPPER_CASE('x'));
        NSLog(@"Is X upper?: %i", IS_UPPER_CASE('X'));
        
        NSLog(@"Is X alpha?: %i", IS_ALPHABETIC('X'));
        NSLog(@"Is 5 alpha?: %i", IS_ALPHABETIC('5'));
        
        NSLog(@"Is X digit?: %i", IS_DIGIT('X'));
        NSLog(@"Is 5 digit?: %i", IS_DIGIT('5'));
        
        NSLog(@"Is a special?: %i", IS_SPECIAL('a'));
        NSLog(@"Is ~ special?: %i", IS_SPECIAL('~'));
        
        NSLog(@"ABS -3?: %i", ABSOLUTE_VALUE(-3));
        NSLog(@"ABS 9?: %i", ABSOLUTE_VALUE(9));
        NSLog(@"ABS 9-15?: %i", ABSOLUTE_VALUE(9-15));
        
    }
    return 0;
}

