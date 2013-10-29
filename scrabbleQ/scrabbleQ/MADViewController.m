//
//  MADViewController.m
//  scrabbleQ
//
//  Created by Ryan Wilding on 10/22/13.
//  Copyright (c) 2013 Ryan Wilding. All rights reserved.
//

#import "MADViewController.h"

@interface MADViewController ()

@end

@implementation MADViewController

{
    NSArray *words;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSBundle *bundle=[NSBundle mainBundle]; //returns a bundle object of our app
    NSString *plistPath=[bundle pathForResource: @"qwordswithoutu1" ofType:@"plist"]; //retrieve the path of continents.plist
    words=[[NSArray alloc] initWithContentsOfFile:plistPath]; //loads the words of the plist file into the array
    self.title=@"Words"; //sets the title of the controller
	// Do any additional setup after loading the view, typically from a nib.
}

//Required methods for UITableViewDataSource
//Customize the number of rows in the section

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [words count]; //returns the number of continents
}

//Displays table view cells
-(UITableViewCell *)tableView:(UITableView *)tableView
        cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier =@"CellIdentifier";//static variable allocated for lifetime of program
    
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell==nil) {
        cell=[[UITableViewCell alloc] initWithStyle: UITableViewCellStyleDefault
                                    reuseIdentifier:CellIdentifier];
    }
    //Configure the cell
    cell.textLabel.text=[words objectAtIndex:indexPath.row];//sets the text of the cell with the row being requested
    
    return cell;
}
//UITableViewDelegate method that is called when a row is selected
-(void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *rowValue=[words objectAtIndex: indexPath.row]; //sets the title of the selected row
    NSString *message=[[NSString alloc] initWithFormat: @"You selected %@", rowValue];
    UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Row Selected" message:message delegate:nil cancelButtonTitle:@"Yes, I did" otherButtonTitles:nil];
    [alert show];
    [tableView deselectRowAtIndexPath:indexPath animated:YES]; //deselects the row that had been choosen
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
