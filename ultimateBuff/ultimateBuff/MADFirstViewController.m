//
//  MADFirstViewController.m
//  ultimateBuff
//
//  Created by Ryan Wilding on 11/8/13.
//  Copyright (c) 2013 Ryan Wilding. All rights reserved.
//

#import "MADFirstViewController.h"
#import <Social/Social.h>
@interface MADFirstViewController ()

@end

@implementation MADFirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}


@end