//
//  MADViewController.h
//  picker
//
//  Created by Ryan Wilding on 10/3/13.
//  Copyright (c) 2013 Ryan Wilding. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MADViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>
@property (weak, nonatomic) IBOutlet UIPickerView *musicPicker;
@property (weak, nonatomic) IBOutlet UILabel *choiceLabel;
@property (strong, nonatomic) NSArray *genre;
@property (strong, nonatomic) NSArray *decade;
@end
