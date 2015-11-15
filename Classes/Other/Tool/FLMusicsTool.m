//
//  FLMusicsTool.m
//  MusicPlayer
//
//  Created by 叶锋雷 on 15/11/14.
//  Copyright © 2015年 叶锋雷. All rights reserved.
//

#import "FLMusicsTool.h"
#import "MJExtension.h"

@implementation FLMusicsTool 

// 所有歌曲
static NSArray *_musics;

// 当前正在播放歌曲
static FLMusic *_playingMusic;

// 获取所有音乐
+(NSArray *)musics{
    if (!_musics) {
        _musics=[FLMusic objectArrayWithFilename:@"Musics.plist"];
    }
    return _musics;
}

// 设置当前正在播放的音乐
+(void)setPlayingMusic:(FLMusic *)music{
    // 判断传入的音乐模型是否为nil
    // 判断数组中是否包含该音乐模型
    if(!music || ![[self musics] containsObject:music]){
        return;
    }
    _playingMusic = music;
}

// 返回当前正在播放的音乐
+(FLMusic *)playingMusic{
    return _playingMusic;
}

// 获取下一首
+(FLMusic *)nextMusic{
    // 1.获取当前播放的索引
    NSUInteger currentIndex=[[self musics] indexOfObject:_playingMusic];
    // 2.计算下一首的索引
    NSInteger nextIndex=currentIndex+1;
    // 3.越界处理
    if (nextIndex >=[[self musics]count]) {
        nextIndex=0;
    }
    // 4.取出下一首的模型返回
    return [self musics][nextIndex];
}

// 获取上一首
+(FLMusic *)previousMusic{
    // 1.获取当前播放的索引
    NSUInteger currentIndex=[[self musics] indexOfObject:_playingMusic];
    // 2.计算下一首的索引
    NSInteger previousIndex=currentIndex-1;
    // 3.越界处理
    if (previousIndex<0) {
        previousIndex=[self musics].count-1;
    }
    // 4.取出上一首的模型返回
    return [self musics][previousIndex];
}

@end
