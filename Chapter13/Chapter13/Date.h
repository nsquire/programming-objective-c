//
//  Date.h
//  Chapter13
//
//  Created by Nicholas Squire on 8/4/12.
//
//

// #6

#import <Foundation/Foundation.h>

@interface Date : NSObject

@property int month, day, year;

-(Date *) dateUpdate: (Date *) d;

@end
