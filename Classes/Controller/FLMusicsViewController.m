//
//  FLMusicsViewController.m
//  MusicPlayer
//
//  Created by 叶锋雷 on 15/11/14.
//  Copyright © 2015年 叶锋雷. All rights reserved.
//

#import "FLMusicsViewController.h"
#import "MJExtension.h"
#import "FLMusicsTool.h"
#import "FLMusic.h"
#import "UIImage+NJ.h"
#import "Colours.h"
#import "FLPlayingViewController.h"


@interface FLMusicsViewController ()

// 播放界面
@property (nonatomic,strong) FLPlayingViewController *playingVc;

@end

@implementation FLMusicsViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[FLMusicsTool musics] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    // 1.创建cell
    static NSString *identifier = @"music";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identifier];
    }
    
    // 2.设置数据
    FLMusic *music=[FLMusicsTool musics][indexPath.row];
    cell.imageView.image=[UIImage circleImageWithName:music.singerIcon borderWidth:5 borderColor:[UIColor skyBlueColor]];
    cell.textLabel.text=music.name;
    cell.detailTextLabel.text=music.singer;
    
    // 3.返回cell
    return cell;
}
// 选中某一个行
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    // 1.主动取消选中
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    // 2.执行segue跳转到播放界面
    //    [self performSegueWithIdentifier:@"musics2playing" sender:nil];
    /*
     1.直接传递
     */
    //    self.playingVc.music = self.musics[indexPath.row];
    //    self.playingVc.musics = self.musics;
    //    self.playingVc.datasource = self;
    
    // 3.设置当前播放的音乐
    FLMusic *music=[FLMusicsTool musics][indexPath.row];
    [FLMusicsTool setPlayingMusic:music];
    
    [self.playingVc show];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}

#pragma mark - 懒加载
-(FLPlayingViewController *)playingVc{
    if (!_playingVc) {
        self.playingVc=[[FLPlayingViewController alloc] init];
    }
    return _playingVc;
}

/**/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
