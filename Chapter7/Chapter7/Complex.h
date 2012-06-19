//
//  Complex.h
//  Chapter7
//
//  Created by Nicholas Squire on 6/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject

@property double real, imaginary;

-(void) print;  // display as a + bi
-(Complex *) add: (Complex *) complexNum;

@end
