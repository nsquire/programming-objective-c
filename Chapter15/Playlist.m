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

-(void) addSong:(Song *)theSong
{
    //TODO: Also add song to library
    [songs addObject: theSong];
}

-(void) removeSong:(Song *)theSong
{
    //TODO: Also  remove song from library
    [songs removeObject: theSong];
}

-(NSString *) description
{
    return [NSString stringWithFormat:@"Playlist name: %@", [self name]];
}

@end
