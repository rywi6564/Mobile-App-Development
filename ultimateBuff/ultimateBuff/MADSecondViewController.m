//
//  MADSecondViewController.m
//  ultimateBuff
//
//  Created by Ryan Wilding on 11/8/13.
//  Copyright (c) 2013 Ryan Wilding. All rights reserved.
//

#import "MADSecondViewController.h"
#import <Social/Social.h>
@interface MADSecondViewController ()

@end

@implementation MADSecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _actField.delegate=self;
    _gpaField.delegate=self;
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


- (IBAction)buttonPressed:(UIButton *)sender {
    
    NSInteger actScore = [_actField.text intValue];
    CGFloat gpa = (CGFloat)[_gpaField.text floatValue];
    
    
    
    if (actScore >= 25 && gpa >= 3.5)
    {
        NSString *answer= [NSString stringWithFormat:@"You're Automatically Accepted!"
                           ];
        _answerOutlet.text=answer;
        // change text of label to say "congrats you can get in"
    }
    
    else if (actScore < 18 || gpa <= 2.5)
        
    {
        //an alert will show if actField is below 19
        UIAlertView *alertView=[[UIAlertView alloc]
                                initWithTitle:@"Warning"
                                message: @"You must have an ACT score greater than 17 and a highschool GPA greater than 2.5 on a 4 point scale to be considered for most universities in Colorado"
                                delegate:self
                                cancelButtonTitle:@"Cancel"
                                otherButtonTitles:@"OK",nil];//list must always end in nil
        [alertView show];
        
    }
    
    else if (actScore >= 25 && gpa < 3.5) {
        
        NSString *answer= [NSString stringWithFormat:@"Your admittance will be reviewed. Try boosting your GPA!"];
        _answerOutlet.text=answer;
        
        
    }
    
    else if (actScore < 25 && gpa >= 3.5) {
        
        NSString *answer= [NSString stringWithFormat:@"Your admittance will be reviewed. Try retaking the ACT!"];
        _answerOutlet.text=answer;
        
        
    }
    
    
    else if (actScore < 25 && actScore > 18 && gpa < 3.5 && gpa > 2.5) {
        
        NSString *answer= [NSString stringWithFormat:@"Try CSU..."];
        _answerOutlet.text=answer;
        
        
    }
    
    
}
- (IBAction)postTwitter:(id)sender {
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter])
    {
        SLComposeViewController *tweetSheet = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
        [self presentViewController:tweetSheet animated:YES completion:nil];
    }
}

- (IBAction)postFacebook:(id)sender {
    if([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]) {
        SLComposeViewController *controller = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        [self presentViewController:controller animated:YES completion:Nil];
    }
}

- (IBAction)textFieldDoneEditing:(UITextField *)sender {
    [sender resignFirstResponder];
}

- (IBAction)keyboardDown:(UIButton *)sender {
    [sender resignFirstResponder];}

@end

