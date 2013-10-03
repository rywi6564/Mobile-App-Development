//
//  MADViewController.m
//  whichCollege
//
//  Created by Ryan Wilding on 10/2/13.
//  Copyright (c) 2013 Ryan Wilding. All rights reserved.
//

#import "MADViewController.h"

@interface MADViewController ()

@end

@implementation MADViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _actField.delegate=self;
    _gpaField.delegate=self;
    _webView.delegate=self;
    [self loadWebPageWithString];
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


- (void)updateWhichCollege
{
   
}


-(void)textFieldDidEndEditing:(UITextField *)textField
{
    [self updateWhichCollege];
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
    
    else if (actScore < 19 || gpa <= 2.5)
        
    {
        //an alert will show if actField is below 19
        UIAlertView *alertView=[[UIAlertView alloc]
                                initWithTitle:@"Warning"
                                message: @"Your ACT score must be greater than 18 and a GPA greater than 2.5 to be accepted into CU"
                                delegate:self
                                cancelButtonTitle:@"Cancel"
                                otherButtonTitles:@"OK",nil];//list must always end in nil
        [alertView show];
        
    }
    
    else if (actScore >= 25 && gpa < 3.5) {
        
        // create alert view saying gpa is too low
        NSString *answer= [NSString stringWithFormat:@"Still Needs To Be Reviewed!"];
        _answerOutlet.text=answer;
        
        
    }
    
    else if (actScore < 25 && gpa >= 3.5) {
        
        // create alert view saying gpa is too low
        NSString *answer= [NSString stringWithFormat:@"Still Needs To Be Reviewed!"];
        _answerOutlet.text=answer;
        
        
    }

    
    else if (actScore < 25 && gpa < 3.5) {
        
        // create alert view saying gpa is too low
        NSString *answer= [NSString stringWithFormat:@"You're Out!"];
        _answerOutlet.text=answer;
        
        
    }
    
   
}


- (IBAction)bookmarkItemTapped:(id)sender {//creates the action sheet
    UIActionSheet *actionSheet=[[UIActionSheet
                                 alloc]initWithTitle:nil
                                delegate:self
                                cancelButtonTitle:@"Cancel"
                                destructiveButtonTitle:nil
                                otherButtonTitles:@"ATLAS", @"TAM", @"CU", nil];
    [actionSheet showFromToolbar:_toolbar];
    //displays the action sheet from the toolbar}
}

//UIActionSheetDelegate Method
//called when a selection is made on an action sheet
-(void)actionSheet:(UIActionSheet *)actionSheet
clickedButtonAtIndex:(NSInteger) buttonIndex
{
    if(buttonIndex==0)
    {
        [self loadWebPageWithString:@"http://atlas.colorado.edu"];
    }
    else if (buttonIndex==1)
    {
        [self loadWebPageWithString:@"http://tam.colorado.edu"];
    }
    else if (buttonIndex==2)
    {
        [self loadWebPageWithString:@"http://www.colorado.edu"];
    }
}



@end
