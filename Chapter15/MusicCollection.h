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

@property (nonatomic, strong) NSMutableArray *playlists;

+(void)initialize;
+(NSMutableArray *)library;

+(void) addToMaster:(Song *)theSong;
+(void) removeFromMaster:(Song *)theSong;
+(void) listMaster;

-(id) init;
-(void) list;

-(void) add:(Playlist *)thePlaylist;
-(void) remove: (Playlist *)thePlaylist;

@end
