//
//  Rectangle.h
//  Chapter10
//
//  Created by Nicholas Squire on 7/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class XYPoint;
@interface Rectangle : NSObject

@property int width, height;

-(id) initWithWidth: (int) w andHeight: (int) h;
-(XYPoint *) origin;
-(void) setOrigin: (XYPoint *) pt;
-(void) setWidth: (int) w andHeight: (int) h; 
-(int) area;
-(int) perimeter;

@end
