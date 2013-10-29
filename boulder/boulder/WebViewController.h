//
//  WebViewController.h
//  boulder
//
//  Created by Ryan Wilding on 10/17/13.
//  Copyright (c) 2013 Ryan Wilding. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController<UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *boulderWebView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *boulderSpinner;

@end
