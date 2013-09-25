//
//  MADViewController.m
//  sportimage_lab_3
//
//  Created by Ryan Wilding on 9/10/13.
//  Copyright (c) 2013 Ryan Wilding. All rights reserved.
//

#import "MADViewController.h"

@interface MADViewController ()

@end

@implementation MADViewController

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

- (IBAction)buttonPressed:(UIButton *)sender {
    if(sender.tag==1)
    {
        _sportImage.image=[UIImage imageNamed:@"broncos.png"];
        NSString *message = [[NSString alloc] initWithFormat:@"%@ I'm a Broncos fan too!", _nameField.text];
        _messageLabel.text=message;
    }
    if(sender.tag==2)
    {
        _sportImage.image=[UIImage imageNamed:@"nuggets.png"];
        NSString *message = [[NSString alloc]initWithFormat:@"The Nuggets are ok %@...", _nameField.text];
        _messageLabel.text=message;
    }
}
- (IBAction)textFieldDoneEditing:(UITextField *)sender {
    [sender resignFirstResponder];
}
@end
