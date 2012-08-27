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
static NSMutableArray *playlists;

+(void)initialize
{
    NSLog(@"Initialize has been called");
    [super initialize];
    
    library = [NSMutableArray array];
    playlists = [NSMutableArray array];
}

+(NSMutableArray *)library
{
    return library;
}

+(NSMutableArray *)playlists
{
    return playlists;
}

+(void) addSongToLibrary:(Song *)theSong
{
    extern NSMutableArray *library;
    [library addObject:theSong];
}

+(void) removeSongFromLibrary:(Song *)theSong
{
    NSLog(@"In removeSongFromLibrary:");
    
    extern NSMutableArray *library;
    extern NSMutableArray *playlists;
    
    for (Playlist *thePlaylist in playlists)
    {
        NSLog(@"Looping through playlists...");
        if ([thePlaylist.songs containsObject:theSong]) {
            NSLog(@"Found song in library");
            [thePlaylist removeSong:theSong];
        }
    }
    
    [library removeObjectIdenticalTo:theSong];
}

+(void) listLibrary
{
    extern NSMutableArray *library;
    
    NSLog(@"Printing all songs in library:");
    for (Song *theSong in library)
        [theSong print];
}

+(void) addPlaylist:(Playlist *)thePlaylist
{
    [playlists addObject:thePlaylist];
}

+(void) removePlaylist: (Playlist *)thePlaylist
{
    [playlists removeObjectIdenticalTo:thePlaylist];
}

+(void) listPlaylists
{
    NSLog(@"Printing all playlists in the Music Collection:");
    for (Playlist *playlist in playlists) {
        NSLog(@"%@", playlist);
    }
}

+(NSArray *) lookup: (NSString *) searchString
{
    NSIndexSet *results = [library indexesOfObjectsPassingTest:
       ^ (id obj, NSUInteger idx, BOOL *stop)
       {
           NSRange theTitleRange = [[obj title] rangeOfString: searchString options: NSCaseInsensitiveSearch];
           
           if (theTitleRange.length >= 1) {
               return YES;
           }
           
           NSRange theArtistRange = [[obj artist] rangeOfString: searchString options: NSCaseInsensitiveSearch];
           
           if (theArtistRange.length >= 1) {
               return YES;
           }
           
           NSRange theAlbumRange = [[obj album] rangeOfString: searchString options: NSCaseInsensitiveSearch];
           
           if (theAlbumRange.length >= 1) {
               return YES;
           }
           
           return NO; // keep looking
       } ];
    
    NSLog(@"Number of items in results set: %li", [results count]);
        
    NSArray *foundSongs = [NSArray array];
    foundSongs = [library objectsAtIndexes: results];
    
    if (foundSongs == nil)
        return nil;
    else
        return foundSongs;
}

@end
