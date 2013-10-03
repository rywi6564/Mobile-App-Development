//
//  MADViewController.h
//  browser
//
//  Created by Ryan Wilding on 10/1/13.
//  Copyright (c) 2013 Ryan Wilding. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MADViewController : UIViewController <UIWebViewDelegate, UIActionSheetDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UIToolbar *toolbar;
- (IBAction)bookmarkItemTapped:(id)sender;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *spinner;

@end
