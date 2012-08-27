//
//  MusicCollection.h
//  Chapter15
//
//  Created by Nicholas Squire on 8/19/12.
//  Copyright (c) 2012 None. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Playlist.h"
#import "Song.h"

@interface MusicCollection : NSObject

+(void)initialize;
+(NSMutableArray *)library;
+(NSMutableArray *)playlists;

+(void) addSongToLibrary:(Song *)theSong;
+(void) removeSongFromLibrary:(Song *)theSong;
+(void) listLibrary;

+(void) addPlaylist:(Playlist *)thePlaylist;
+(void) removePlaylist: (Playlist *)thePlaylist;
+(void) listPlaylists;
+(NSArray *) lookup:(NSString *)searchString;

@end
