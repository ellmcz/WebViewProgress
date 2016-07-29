//
//  WebViewProgress.h
//  Example
//
//  Created by MacBook Air on 16/7/27.
//  Copyright © 2016年 ellmcz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#undef NS_weak
#if __has_feature(objc_arc_weak)
#define NS_weak weak
#else
#define NS_weak unsafe_unretained
#endif

extern const float InitialProgressValue;
extern const float InteractiveProgressValue;
extern const float FinalProgressValue;

typedef void (^WebViewProgressBlock)(float progress);
@protocol WebViewProgressDelegate;
@interface WebViewProgress : NSObject<UIWebViewDelegate>
@property (nonatomic, NS_weak) id<WebViewProgressDelegate>progressDelegate;
@property (nonatomic, NS_weak) id<UIWebViewDelegate>webViewProxyDelegate;
@property (nonatomic, copy) WebViewProgressBlock progressBlock;
/// progress
@property (nonatomic, readonly) float progress; // 0.0..1.0



- (void)reset;
@end

@protocol WebViewProgressDelegate <NSObject>
@required
- (void)webViewProgress:(WebViewProgress *)webViewProgress updateProgress:(float)progress;
@end

