//
//  AddressCard.h
//  Chapter15
//
//  Created by Nicholas Squire on 8/12/12.
//  Copyright (c) 2012 None. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject

@property (copy, nonatomic) NSString *name, *email;

-(void) setName:(NSString *) theName andEmail: (NSString *) theEmail;
-(void) print;
-(NSComparisonResult) compareNames: (id) element;


@end
