//
//  MADViewController.h
//  helloworld2
//
//  Created by Ryan Wilding on 9/3/13.
//  Copyright (c) 2013 Ryan Wilding. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MADViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *messageText;
- (IBAction)buttonPressed:(UIButton *)sender;


@end
