//
//  MADViewController.h
//  sportimage_lab_3
//
//  Created by Ryan Wilding on 9/10/13.
//  Copyright (c) 2013 Ryan Wilding. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MADViewController : UIViewController
- (IBAction)buttonPressed:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIImageView *sportImage;
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UILabel *messageLabel;
- (IBAction)textFieldDoneEditing:(UITextField *)sender;

@end
