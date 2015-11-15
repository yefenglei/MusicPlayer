//
//  FLAudioTool.h
//  MusicPlayer
//
//  Created by 叶锋雷 on 15/11/12.
//  Copyright © 2015年 叶锋雷. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

@interface FLAudioTool : NSObject

// 播放音效
// 传入需要 播放的音效文件名称
+(void)playAudioWithFilename:(NSString *)filename;
// 销毁音效
+(void)disposeAudioWithFilename:(NSString *)filename;
// 根据音乐文件名称播放音乐
+(AVAudioPlayer *)playMusicWithFilename:(NSString  *)filename;
// 根据音乐文件名称暂停音乐
+(void)pauseMusicWithFilename:(NSString *)filename;
// 根据音乐文件名称停止音乐
+(void)stopMusicWithFilename:(NSString *)filename;
@end
