//
//  Circle.h
//  Chapter8
//
//  Created by Nicholas Squire on 6/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GraphicObject.h"

@interface Circle : GraphicObject

@property float radius;

-(float) area;
-(float) circumfrence;

@end
