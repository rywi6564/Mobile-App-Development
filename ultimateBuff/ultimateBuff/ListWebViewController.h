//
//  ListWebViewController.h
//  ultimateBuff
//
//  Created by Ryan Wilding on 11/11/13.
//  Copyright (c) 2013 Ryan Wilding. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListWebViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) NSString *theUrl;


@end
