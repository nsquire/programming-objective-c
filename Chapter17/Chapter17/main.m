//
//  main.m
//  Chapter17
//
//  Created by Squire, Nicholas on 9/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressBook.h"
#import "AddressCard.h"

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString *aName = @"Julia Kochan"; 
        NSString *aEmail = @"jewls337@axlc.com"; 
        NSString *bName = @"Tony Iannino"; 
        NSString *bEmail = @"tony.iannino@techfitness.com"; 
        NSString *cName = @"Stephen Kochan"; 
        NSString *cEmail = @"steve@classroomM.com"; 
        NSString *dName = @"Jamie Baker"; 
        NSString *dEmail = @"jbaker@classroomM.com";
        
        AddressCard *card1 = [[AddressCard alloc] init]; 
        AddressCard *card2 = [[AddressCard alloc] init];
        AddressCard *card3 = [[AddressCard alloc] init]; 
        AddressCard *card4 = [[AddressCard alloc] init];
        
        // Set up a new address book
        
        AddressBook *myBook = [[AddressBook alloc] initWithName: @"Linda’s Address Book"];
        NSLog (@"Entries in address book after creation: %lu", [myBook entries]);
        
        // Now set up four address cards
        
        [card1 setName: aName andEmail: aEmail]; 
        [card2 setName: bName andEmail: bEmail]; 
        [card3 setName: cName andEmail: cEmail]; 
        [card4 setName: dName andEmail: dEmail];
        
        // Add the cards to the address book
        
        [myBook addCard: card1]; 
        [myBook addCard: card2]; 
        [myBook addCard: card3]; 
        [myBook addCard: card4];
        
        NSLog (@"Entries in address book after adding cards: %lu", [myBook entries]);
        
        // Look up a person by name
        
        NSLog (@"Stephen Kochan");
        
        AddressCard *myCard;
        myCard = [myBook lookup: @"stephen kochan"];
        
        if (myCard != nil)
            [myCard print];
        else 
            NSLog (@"Not found!");
        
        // Try another lookup
        
        NSLog (@"Haibo Zhang");
        
        myCard = [myBook lookup: @"Haibo Zhang"];
        
        if (myCard != nil)
            [myCard print];
        else
            NSLog (@"Not found!");
        
        // List all the entries in the book now
        
        [myBook list];
        
        // Copy our Address Book
        
        AddressBook *newAddressBook;
        newAddressBook = [myBook copy];
        
        // Add card to new Address Book
        
        AddressCard *newCard = [[AddressCard alloc] init];
        [newCard setName:@"testing" andEmail:@"testing@example.com"];
        [newAddressBook addCard: newCard];
        
        NSLog(@"%@", [newAddressBook bookName]);
        
        [newAddressBook list];
        
        [myBook list];
        
        // Create a dictionary
        
        NSDictionary *myDict = [[NSDictionary alloc] initWithObjectsAndKeys: @"value1", @"key1", @"value2", @"key2", nil];
        NSDictionary *copy1 = [myDict copy];
        NSDictionary *copy2 = [myDict mutableCopy];
        
        NSLog(@"%@", myDict);
        NSLog(@"%@", copy1);
        NSLog(@"%@", copy2);
        
        [copy2 setValue:@"new value" forKey:@"key1"];
        
        NSLog(@"%@", myDict);
        NSLog(@"%@", copy1);
        NSLog(@"%@", copy2);
        
    }
    return 0;
}

