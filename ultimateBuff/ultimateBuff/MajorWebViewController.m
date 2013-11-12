//
//  MajorWebViewController.m
//  ultimateBuff
//
//  Created by Ryan Wilding on 11/11/13.
//  Copyright (c) 2013 Ryan Wilding. All rights reserved.
//

#import "MajorWebViewController.h"

@interface MajorWebViewController ()

@end

@implementation MajorWebViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void) loadWebPagewithString:(NSString *)urlString{
    
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [_sportsWebView loadRequest:request];
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    _sportsWebView.delegate = self;
    [self loadWebPagewithString:@"http://www.cubuffs.com/"];
    
	// Do any additional setup after loading the view.
}

-(void)webViewDidStartLoad:(UIWebView *)webView{
    _spinner.alpha = 1.0;
    [_spinner startAnimating];
}

-(void)webViewDidFinishLoad:(UIWebView *)webView{
    [_spinner stopAnimating];
    _spinner.alpha = 0.0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
