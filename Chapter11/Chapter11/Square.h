//
//  Square.h
//  Chapter11
//
//  Created by Nicholas Squire on 7/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Rectangle.h"

@interface Square : NSObject

-(Square *) initWithSide: (int) s;
-(void) setSide: (int) s;
-(int) side;
-(int) area;
-(int) perimeter;

@end
