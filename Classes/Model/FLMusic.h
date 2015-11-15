//
//  FLMusic.h
//  MusicPlayer
//
//  Created by 叶锋雷 on 15/11/14.
//  Copyright © 2015年 叶锋雷. All rights reserved.
//

#ifndef FLMusic_h
#define FLMusic_h


#endif /* FLMusic_h */

#import <Foundation/Foundation.h>

@interface FLMusic : NSObject
/**
 *  歌曲名字
 */
@property (copy,nonatomic) NSString *name;
/**
 *  歌曲大图
 */
@property (copy,nonatomic) NSString *icon;
/**
 *  歌曲的文件名
 */
@property(copy,nonatomic) NSString *filename;
/**
 *  歌词的文件名
 */
@property (copy, nonatomic) NSString *lrcname;
/**
 *  歌手
 */
@property (copy, nonatomic) NSString *singer;
/**
 *  歌手图标
 */
@property (copy, nonatomic) NSString *singerIcon;
@end