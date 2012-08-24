//
//  MusicCollection.m
//  Chapter15
//
//  Created by Nicholas Squire on 8/19/12.
//  Copyright (c) 2012 None. All rights reserved.
//

#import "MusicCollection.h"
#import "Playlist.h"

@implementation MusicCollection
{
    NSMutableArray *library;
}

@synthesize playlists;

-(id) init
{
    self = [super init];
    
    if (self)
    {
        library = [NSArray array];
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
