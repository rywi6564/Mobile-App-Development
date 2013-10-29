//
//  WebViewController.m
//  boulder
//
//  Created by Ryan Wilding on 10/17/13.
//  Copyright (c) 2013 Ryan Wilding. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

-(void) loadWebPageWithString:(NSString *)urlString {
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [_boulderWebView loadRequest:request];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    _boulderWebView.delegate=self;
    [self loadWebPageWithString:@"http://www.colorado.edu"];
	// Do any additional setup after loading the view.
}
//UIWebViewDelegate method that is called when a web page begins to load
-(void)webViewDidStartLoad:(UIWebView *)webView {
    [_boulderSpinner startAnimating];
}
//UIWebViewDelegate method that is called when a web page loads successfully
-(void)webViewDidFinishLoad:(UIWebView *)webView {
    [_boulderSpinner stopAnimating];//send the stopAnimating message to the spinner
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
