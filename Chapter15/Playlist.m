//
//  Playlist.m
//  Chapter15
//
//  Created by Nicholas Squire on 8/19/12.
//  Copyright (c) 2012 None. All rights reserved.
//

#import "Playlist.h"

@implementation Playlist

@synthesize name, songs;

-(id) init
{
    self = [super init];
    
    if (self) {
        songs = [NSMutableArray array];
    }
    
    return self;
}

-(void) addSong:(Song *)theSong
{
    NSLog(@"Adding song to playlist...");
    NSLog(@"Song info:");
    [theSong print];

    [songs addObject: theSong];
    NSLog(@"Playlist count: %lu", [songs count]);
    //[self listSongs];
}

-(void) removeSong:(Song *)theSong
{
    NSLog(@"Removing song to playlist...");
    [songs removeObject: theSong];
}

-(void) listSongs
{
    NSLog(@"Printing songs in playlist:");
    
    for (Song *theSong in songs)
    {
        NSLog(@"Printing song...");
        [theSong print];
    }
}

-(NSString *) description
{
    return [NSString stringWithFormat:@"Playlist name: %@", [self name]];
}

@end
