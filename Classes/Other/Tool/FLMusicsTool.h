//
//  FLMusicsTool.h
//  MusicPlayer
//
//  Created by 叶锋雷 on 15/11/14.
//  Copyright © 2015年 叶锋雷. All rights reserved.
//

#ifndef FLMusicsTool_h
#define FLMusicsTool_h


#endif /* FLMusicsTool_h */

#import <Foundation/Foundation.h>
#import "FLMusic.h"

@interface FLMusicsTool : NSObject
// 获取所有音乐
+(NSArray *)musics;

// 设置当前正在播放的音乐
+(void)setPlayingMusic:(FLMusic *)music;

// 返回当前正在播放的音乐
+(FLMusic *)playingMusic;

// 获取下一首
+(FLMusic *)nextMusic;

// 获取上一首
+(FLMusic *)previousMusic;

@end