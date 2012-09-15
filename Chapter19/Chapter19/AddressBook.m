//
//  AddressBook.m
//  Chapter19
//
//  Created by Nicholas Squire on 9/15/12.
//  Copyright (c) 2012 None. All rights reserved.
//

#import "AddressBook.h"

@implementation AddressBook

@synthesize book, bookName;

// set up the AddressBook’s name and an empty book

-(id) initWithName: (NSString *) name {
    self = [super init];
    
    if (self) {
        bookName = [NSString stringWithString: name];
        book = [NSMutableArray array];
    }
    
    return self;
}

-(id) init
{
    return [self initWithName: @"Unnamed Book"];
}

// Write our own book setter to create a mutable copy

-(void) setBook: (NSArray *) theBook
{
    book = [theBook mutableCopy];
}

-(void) sort
{
    [book sortUsingSelector: @selector(compareNames:)];
}

// Alternate sort using blocks
-(void) sort2 {
    [book sortUsingComparator:
     ^(id obj1, id obj2) {
        return [[obj1 name] compare: [obj2 name]];
     }];
}

-(void) addCard: (AddressCard *) theCard
{
    //NSLog(@"Adding card...%@", [theCard name]);
    
    [book addObject: theCard];
    
    //NSLog(@"array: %@", book);
}

-(void) removeCard: (AddressCard *) theCard
{
    [book removeObjectIdenticalTo: theCard];
}

-(NSUInteger) entries
{
    return [book count];
}

-(void) list {
    NSLog (@"======== Contents of: %@ =========", bookName);
    
    for ( AddressCard *theCard in book )
        NSLog (@"%-20s %-32s", [theCard.name UTF8String], [theCard.email UTF8String]);
    
    NSLog (@"==================================================");
}

// lookup address card by name — assumes an exact match

-(AddressCard *) lookup: (NSString *) theName {
    for ( AddressCard *nextCard in book )
        if ( [[nextCard name] caseInsensitiveCompare: theName] == NSOrderedSame )
            return nextCard;
    
    return nil;
}

-(void) encodeWithCoder: (NSCoder *) encoder
{
    [encoder encodeObject: bookName forKey: @"AddressBookBookName"];
    [encoder encodeObject: book forKey: @"AddressBookBook"];
}

-(id) initWithCoder: (NSCoder *) decoder
{
    bookName = [decoder decodeObjectForKey: @"AddressBookBookName"];
    book = [decoder decodeObjectForKey: @"AddressBookBook"];
    return self;
}

// Method for NSCopying protocol

-(id) copyWithZone: (NSZone *) zone
{
    id newBook = [[[self class] allocWithZone: zone] init];
    [newBook setBookName: bookName];
    
    // The following will do a shallow copy of the address book
    
    [newBook setBook: book];
    return newBook;
}

@end
