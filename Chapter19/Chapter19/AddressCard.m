//
//  AddressCard.m
//  Chapter19
//
//  Created by Nicholas Squire on 9/15/12.
//  Copyright (c) 2012 None. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard

@synthesize name, email;

-(void) setName: (NSString *) theName andEmail: (NSString *) theEmail
{
    self.name = theName;
    self.email = theEmail;
}

// Compare the two names from the specified address cards -(NSComparisonResult) compareNames: (id) element

-(NSComparisonResult) compareNames: (id) element
{
    return [name compare: [element name]];
}

-(void) print
{
    NSLog (@"====================================");
    NSLog (@"|  %-31s |", [email UTF8String]);
    NSLog (@"|                                  |");
    NSLog (@"|                                  |");
    NSLog (@"|                                  |");
    NSLog (@"|         O          0             |");
    NSLog (@"====================================");
}

-(id) copyWithZone: (NSZone *) zone
{
    id newCard = [[[self class] allocWithZone: zone] init];
    [newCard assignName: name andEmail: email];
    return newCard;
}

-(void) assignName: (NSString *) theName andEmail: (NSString *) theEmail {
    name = theName;
    email = theEmail;
}

-(void) encodeWithCoder: (NSCoder *) encoder {
    [encoder encodeObject: name forKey: @"AddressCardName"];
    [encoder encodeObject: email forKey: @"AddressCardEmail"];
}

-(id) initWithCoder: (NSCoder *) decoder {
    name = [decoder decodeObjectForKey: @"AddressCardName"];
    email = [decoder decodeObjectForKey: @"AddressCardEmail"];
    return self;
}


@end
