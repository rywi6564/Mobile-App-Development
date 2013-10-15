//
//  MADViewController.m
//  picker
//
//  Created by Ryan Wilding on 10/3/13.
//  Copyright (c) 2013 Ryan Wilding. All rights reserved.
//

#import "MADViewController.h"

@interface MADViewController ()

@end

@implementation MADViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSArray *array=[[NSArray alloc] initWithObjects:@"Country", @"Pop", @"Rock", @"Alternative", @"Hip Hop", @"Jazz", @"Classical", nil];
    _genre=array;
    NSArray *array2=[[NSArray alloc] initWithObjects:@"1950s", @"1960s", @"1970s", @"1980s", @"1990s", @"2000s", @"2010s", nil];
    _decade=array2;
	// Do any additional setup after loading the view, typically from a nib.
}
//Required for the UIPickerViewDataSource protocol
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 2;//number of components
}
//Required for the UIPickerViewDataSource protocol
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if (component==0)
    return [_genre count];//returns number of rows of data
    else return[_decade count];
    
}
//returns the title for a given row
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if (component==0)
    return [_genre objectAtIndex:row];//returns the content of the row
    else return [_decade objectAtIndex:row];
}
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    NSInteger genrerow=[_musicPicker selectedRowInComponent:0];
    NSInteger decaderow=[_musicPicker selectedRowInComponent:1];
    //writes the string with the row's content to the label
    _choiceLabel.text=[NSString stringWithFormat:@"You like %@ from the %@", [_genre objectAtIndex:genrerow], [_decade objectAtIndex:decaderow]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}







@end
