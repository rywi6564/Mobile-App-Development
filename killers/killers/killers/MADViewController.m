//
//  MADViewController.m
//  killers
//
//  Created by Ryan Wilding on 9/17/13.
//  Copyright (c) 2013 Ryan Wilding. All rights reserved.
//

#import "MADViewController.h"

@interface MADViewController ()

@end

@implementation MADViewController

- (void)viewDidLoad
{
    _imageControl.selectedSegmentIndex = -1;
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeImage:(UISegmentedControl *)sender {
    if (_imageControl.selectedSegmentIndex==0) {
        _titleLabel.text=@"In 2004";
        _lightningImage.image=[UIImage imageNamed:@"hotfuss.png"];
    } else if (_imageControl.selectedSegmentIndex==1) {
        _titleLabel.text=@"In 2012";
        _lightningImage.image=[UIImage imageNamed:@"battleborn.png"];
    }
}
- (IBAction)updateFont:(UISwitch *)sender {
    if (_capitalizedSwitch.on) {
        _titleLabel.text=[_titleLabel.text uppercaseString];
    } else {
        _titleLabel.text=[_titleLabel.text lowercaseString];
    }
}

- (IBAction)changeFontSize:(UISlider *)sender {
    //get the font size
    int fontSize = sender.value;
    //change the font size label
    _fontSizeNumberLabel.text=[NSString stringWithFormat:@"%d", fontSize];
    //create a new font object
    UIFont *newFont = [UIFont systemFontOfSize:sender.value];
    //apply the new font to the label
    _titleLabel.font=newFont;
}
@end
