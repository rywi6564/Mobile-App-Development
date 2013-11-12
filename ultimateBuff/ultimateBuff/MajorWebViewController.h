//
//  MajorWebViewController.h
//  ultimateBuff
//
//  Created by Ryan Wilding on 11/11/13.
//  Copyright (c) 2013 Ryan Wilding. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MajorWebViewController : UIViewController<UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *sportsWebView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *spinner;
@end
