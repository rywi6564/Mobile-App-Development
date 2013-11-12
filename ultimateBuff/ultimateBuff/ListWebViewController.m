//
//  ListWebViewController.m
//  ultimateBuff
//
//  Created by Ryan Wilding on 11/11/13.
//  Copyright (c) 2013 Ryan Wilding. All rights reserved.
//

#import "ListWebViewController.h"

@interface ListWebViewController () {
    NSString *theurl;
}

@end

@implementation ListWebViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    NSURL *url = [NSURL URLWithString:self.theUrl];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [_webView loadRequest:request];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
