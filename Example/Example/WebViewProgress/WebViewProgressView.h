//
//  WebViewProgressView.h
//  Example
//
//  Created by MacBook Air on 16/7/27.
//  Copyright © 2016年 ellmcz. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface WebViewProgressView : UIView
/// 进度条的值
@property (nonatomic,assign) float progress;
/// progressBarView
@property (nonatomic,strong) UIView *progressBarView;
/// 开始的时候 default 0.0
@property (nonatomic,assign) NSTimeInterval barAnimationDuration;
/// 褪色default 0.1
@property (nonatomic,assign) NSTimeInterval fadeAnimationDuration;
/// 褪色淡出default 0.1
@property (nonatomic,assign) NSTimeInterval fadeOutDelay;
/**
 *   给progress附值，设置动画
 *
 *  @param progress progress附值
 *  @param animated 设置动画
 */
- (void)setProgress:(float)progress animated:(BOOL)animated;
@end
