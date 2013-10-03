//
//  MADViewController.h
//  whichCollege
//
//  Created by Ryan Wilding on 10/2/13.
//  Copyright (c) 2013 Ryan Wilding. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MADViewController : UIViewController<UITextFieldDelegate, UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *actField;
@property (weak, nonatomic) IBOutlet UITextField *gpaField;
- (IBAction)buttonPressed:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *answerOutlet;

@end
