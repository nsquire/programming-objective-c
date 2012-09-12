//
//  AddressBook.h
//  Chapter17
//
//  Created by Squire, Nicholas on 9/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"

@interface AddressBook : NSObject <NSCopying>

@property (nonatomic, copy) NSString *bookName;
@property (nonatomic, strong) NSMutableArray *book;

-(id) initWithName: (NSString *) name;
-(void) addCard: (AddressCard *) theCard;
-(NSUInteger) entries;
-(void) list;
-(AddressCard *) lookup: (NSString *) theName;

@end
