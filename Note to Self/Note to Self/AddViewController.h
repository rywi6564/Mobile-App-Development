//
//  AddViewController.h
//  Note to Self
//
//  Created by Ryan Wilding on 12/13/13.
//  Copyright (c) 2013 Ryan Wilding. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *taskText;

@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
- (IBAction)cancel:(id)sender;
- (IBAction)save:(id)sender;

@end
