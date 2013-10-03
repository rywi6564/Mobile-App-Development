//
//  MADViewController.h
//  whichCollege
//
//  Created by Ryan Wilding on 10/2/13.
//  Copyright (c) 2013 Ryan Wilding. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MADViewController : UIViewController<UITextFieldDelegate, UIAlertViewDelegate, UIActionSheetDelegate>
@property (weak, nonatomic) IBOutlet UITextField *actField;
@property (weak, nonatomic) IBOutlet UITextField *gpaField;
- (IBAction)buttonPressed:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *answerOutlet;
- (IBAction)bookmarkItemTapped:(id)sender;
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end
