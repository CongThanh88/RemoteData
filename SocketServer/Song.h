//
//  Song.h
//  SocketServer
//
//  Created by Cong Thanh on 2/2/15.
//  Copyright (c) 2015 com.softfront. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Song : NSObject
@property(nonatomic, strong)NSString *number;
@property(nonatomic, strong)NSString *arrNumber;
@property(nonatomic, strong)NSString *title;
@property(nonatomic, strong)NSString *title_shorcut;
@property(nonatomic, strong)NSString *title_search;
@property(nonatomic, strong)NSString *title_search2;
@property(nonatomic, strong)NSString *music_by;
@property(nonatomic, strong)NSString *lyric_by;
@property(nonatomic, strong)NSString *karaoke_type;
@property(nonatomic, strong)NSString *karaoke_file;
@property(nonatomic, assign)NSInteger version;
@property(nonatomic, strong)NSString *singer;
@property(nonatomic, strong)NSString *singer_search;
@property(nonatomic, strong)NSString *language;
@property(nonatomic, assign)NSString *short_lyric;
@property(nonatomic, strong)NSString *lyric_file;
@property(nonatomic, strong)NSString *genre;
@property(nonatomic, strong)NSString *genre_search;
@property(nonatomic, assign)NSInteger *karaoke_track;
@property(nonatomic, assign)BOOL is_favorite;
@property(nonatomic, assign)BOOL is_free;
@property(nonatomic, assign)BOOL is_new;
@property(nonatomic, assign)BOOL is_local;
@property(nonatomic, assign)BOOL is_record;

+(Song*)parseSongFromResponseString:(NSString*)response;
+(NSArray*)parseListSongResponseString:(NSArray*)listString;
@end
