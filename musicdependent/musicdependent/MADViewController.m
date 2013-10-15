//
//  MADViewController.m
//  musicdependent
//
//  Created by Ryan Wilding on 10/8/13.
//  Copyright (c) 2013 Ryan Wilding. All rights reserved.
//

#import "MADViewController.h"

@interface MADViewController ()

@end

@implementation MADViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSBundle *bundle=[NSBundle mainBundle];
    //returns a bundle object of our app
    NSString *plistPath=[bundle pathForResource:@"artistalbums" ofType:@"plist"];
    //retrieve the path of artistalbums.plist
    _artistAlbums=[[NSDictionary alloc] initWithContentsOfFile:plistPath];
    //loads the contents of the plist file into the artistAlbums dictionary
    //the dictionary uses the artists as the keys and a NSArray with the albumes for each artist.
    
    _artists=[_artistAlbums allKeys];
    //retrieve all the keys with the artist names and populate the left compnonent
    
    NSString *selectedArtist=[_artists objectAtIndex:0];
    //get the artist at index 0
    
    _albums=[_artistAlbums objectForKey:selectedArtist];
    //get the albums for the selected artist
    //get the albums for the selected artist and poopulate the right component
    
	// Do any additional setup after loading the view, typically from a nib.
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 2; //number of components
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if (component==artistComponent)//checks which component was picked and returns that components row count
        return[_artists count];
    else return[_albums count];
}

//Picker Delegat Methods
//returns the title for a given row
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if (component==artistComponent)//checks which component was picked and returns the value for the requested component.
        return [_artists objectAtIndex:row];
    else return [_albums objectAtIndex:row];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    if (component==artistComponent){
        //checks which component was picked
        NSString *selectedArtist=[_artists objectAtIndex:row];//gets the selected artist
        _albums=[_artistAlbums objectForKey:selectedArtist];
        //gets the albums for the selected artist and assigns the array of albums to the right component
        [_musicPicker selectRow:0 inComponent:albumComponent animated:YES];//set the right component back to 0
        [_musicPicker reloadComponent:albumComponent];   //reload the right component
    }
    NSInteger artistrow=[_musicPicker selectedRowInComponent:artistComponent];
    //gets the choosen row for the artist
    NSInteger albumrow=[_musicPicker selectedRowInComponent:albumComponent];
    //gets the choosen row for the album
    _choiceLabel.text=[NSString stringWithFormat:@"You like %@ by %@", [_albums objectAtIndex:albumrow], [_artists objectAtIndex:artistrow]];
    //writes the string with the selected row's content to the label
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
