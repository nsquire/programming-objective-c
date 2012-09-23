//
//  main.m
//  Chapter19
//
//  Created by Squire, Nicholas on 9/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Print prime number
        
        int	p, d; 
        BOOL isPrime;
        NSMutableArray *myArray = [NSMutableArray array];
        
        for ( p = 2; p <= 50; ++p ) { 
            isPrime = YES;
            
            for ( d = 2; d < p; ++d ) 
                if ( p % d == 0 )
                    isPrime = NO;
            
            if ( isPrime == YES ) {
                NSLog (@"%i ", p);
                NSUInteger *myInt = [p ];
                [myArray addObject: myInt];
            }
        }
        
        NSLog(@"p:%@", myArray);
        
    }
    return 0;
}

