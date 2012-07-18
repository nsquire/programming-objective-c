//
//  Complex.h
//  Chapter9
//
//  Created by Nicholas Squire on 7/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject

@property double real, imaginary;
-(void) print;
-(void) setReal: (double) a andImaginary: (double) b; 
-(id) add: (id) f;

@end
