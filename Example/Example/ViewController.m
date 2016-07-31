//
//  ViewController.m
//  Example
//
//  Created by MacBook Air on 16/7/27.
//  Copyright © 2016年 ellmcz. All rights reserved.
//

#import "ViewController.h"
#import "WebViewProgressHeader.h"
@interface ViewController ()<UIWebViewDelegate,WebViewProgressDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (nonatomic,strong)WebViewProgressView  *progressView;
@property (nonatomic,strong)WebViewProgress  *progress;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
       _progress = [[WebViewProgress alloc] init];
    _webView.delegate = _progress;
    _progress.webViewProxyDelegate = self;
    _progress.progressDelegate = self;
    _progressView = [[WebViewProgressView alloc] initWithFrame:WebViewProgressRect];
    NSURLRequest *req = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:@"https://www.baidu.com"]];
    [_webView loadRequest:req];

    // Do any additional setup after loading the view, typically from a nib.
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController.navigationBar addSubview:_progressView];
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [_progressView removeFromSuperview];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)webViewProgress:(WebViewProgress *)webViewProgress updateProgress:(float)progress
{
    [_progressView setProgress:progress animated:YES];
    self.title = [_webView stringByEvaluatingJavaScriptFromString:@"document.title"];
}

@end
