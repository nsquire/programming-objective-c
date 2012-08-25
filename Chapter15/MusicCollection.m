//
//  MusicCollection.m
//  Chapter15
//
//  Created by Nicholas Squire on 8/19/12.
//  Copyright (c) 2012 None. All rights reserved.
//

#import "MusicCollection.h"

@implementation MusicCollection

static NSMutableArray *library;

@synthesize playlists;

+(void)initialize
{
    NSLog(@"Initialize has been called");
    [super initialize];
    
    library = [NSMutableArray array];
}

+(NSMutableArray *)library
{
    return library;
}

+(void) addToMaster:(Song *)theSong
{
    extern NSMutableArray *library;
    [library addObject:theSong];
}

+(void) removeFromMaster:(Song *)theSong
{
    extern NSMutableArray *library;
    //[library removeObject:theSong];
}


+(void) listMaster
{
    extern NSMutableArray *library;
    
    NSLog(@"Printing all songs in library:");
    for (Song *theSong in library)
        [theSong print];
}

-(id) init
{
    self = [super init];
    
    if (self)
    {
        //library = [NSMutableArray array];
    }
    
    return self;
}

-(void) add:(Playlist *)thePlaylist
{
    [playlists addObject:thePlaylist];
}

-(void) remove: (Playlist *)thePlaylist
{
    [playlists removeObject:thePlaylist];
}

-(void) list
{
    for (Playlist *playlist in playlists) {
        NSLog(@"%@", playlist);
    }
}

@end
