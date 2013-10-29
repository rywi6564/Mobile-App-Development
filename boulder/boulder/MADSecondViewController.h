//
//  MADSecondViewController.h
//  boulder
//
//  Created by Ryan Wilding on 10/17/13.
//  Copyright (c) 2013 Ryan Wilding. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MADSecondViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *nameTextfield;
@property (weak, nonatomic) IBOutlet UITextField *emailTextfield;
@property (weak, nonatomic) IBOutlet UITextView *questionTextview;
- (IBAction)submitQuestion:(UIButton *)sender;

@end
