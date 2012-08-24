//
//  AddressCard.m
//  Chapter15
//
//  Created by Nicholas Squire on 8/12/12.
//  Copyright (c) 2012 None. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard

@synthesize name, email, physicalAddress;

-(void) setName: (NSString *) theName andEmail: (NSString *) theEmail
{
    self.name = theName;
    self.email = theEmail;
}

-(void) setName: (NSString *) theName andEmail: (NSString *) theEmail andAddress:(NSString *)theAddress
{
    self.name = theName;
    self.email = theEmail;
    self.physicalAddress = theAddress;
}

-(void) print
{
    NSLog (@"\n");
    NSLog (@"====================================");
    NSLog (@"|                                  |");
    NSLog (@"|  %-31s |", [name UTF8String]);
    NSLog (@"|  %-31s |", [email UTF8String]);
    NSLog (@"|  %-31s |", [physicalAddress UTF8String]);
    NSLog (@"|                                  |");
    NSLog (@"|                                  |");
    NSLog (@"|                                  |");
    NSLog (@"|       O                  O       |");
    NSLog (@"====================================");
    NSLog (@"\n");
}

// compare the two names from the specified address cards
-(NSComparisonResult) compareNames: (id) element
{
    return [self.name compare: [element name]];
}

@end
