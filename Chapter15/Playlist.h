//
//  Playlist.h
//  Chapter15
//
//  Created by Nicholas Squire on 8/19/12.
//  Copyright (c) 2012 None. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Song.h"

@interface Playlist : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) NSMutableArray *songs;

-(id) init;
-(void) addSong:(Song *)theSong;
-(void) removeSong:(Song *)theSong;
-(void) listSongs;

-(NSString *) description;

@end
