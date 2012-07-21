//
//  Square.h
//  Chapter10
//
//  Created by Nicholas Squire on 7/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Rectangle.h"

@interface Square : Rectangle

-(id) initWithSide: (int) side;
-(void) setSide: (int) s;
-(int) side;

@end
