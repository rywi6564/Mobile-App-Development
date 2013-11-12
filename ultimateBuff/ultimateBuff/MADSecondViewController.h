//
//  MADSecondViewController.h
//  ultimateBuff
//
//  Created by Ryan Wilding on 11/8/13.
//  Copyright (c) 2013 Ryan Wilding. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MADSecondViewController : UIViewController<UITextFieldDelegate, UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *actField;
@property (weak, nonatomic) IBOutlet UITextField *gpaField;
- (IBAction)buttonPressed:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *answerOutlet;
- (IBAction)postTwitter:(id)sender;
- (IBAction)postFacebook:(id)sender;
- (IBAction)textFieldDoneEditing:(UITextField *)sender;
- (IBAction)keyboardDown:(UIButton *)sender;

@end
