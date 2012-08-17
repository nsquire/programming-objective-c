//
//  AddressBook.h
//  Chapter15
//
//  Created by Nicholas Squire on 8/15/12.
//  Copyright (c) 2012 None. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"

@interface AddressBook : NSObject

@property (nonatomic, copy) NSString *bookName;
@property (nonatomic, strong) NSMutableArray *book;

-(id) initWithName: (NSString *) name;

-(void) addCard: (AddressCard *) theCard;
-(void) removeCard: (AddressCard *) theCard;

-(void) sort;
-(AddressCard *) lookup: (NSString *) theName;
-(AddressCard *) lookupWithPartial: (NSString *) theName;
-(NSUInteger) entries;
-(void) list;

@end
