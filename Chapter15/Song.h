//
//  Song.h
//  Chapter15
//
//  Created by Nicholas Squire on 8/19/12.
//  Copyright (c) 2012 None. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Song : NSObject

@property (copy, nonatomic) NSString *title, *artist, *album, *playingTime;

-(id) init;
-(void) setTitle:(NSString *)theTitle andArtist:(NSString *)theArtist andAlbum:(NSString *)theAlbum andPlayingTime:(NSString *)thePlayingTime;
-(void) print;

@end
