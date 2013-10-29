//
//  MADViewController.m
//  favorites
//
//  Created by Ryan Wilding on 10/10/13.
//  Copyright (c) 2013 Ryan Wilding. All rights reserved.
//

#import "MADViewController.h"
#import "Scene2ViewController.h"

@interface MADViewController ()

@end

@implementation MADViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _user=[[Favorite alloc]init];
	// Do any additional setup after loading the view, typically from a nib.
}


-(void)viewWillAppear:(BOOL) animated {
    _bookLabel.text=_user.favBook;
    _authorLabel.text=_user.favAuthor;
    
}
-(IBAction)returned:(UIStoryboardSegue *)segue {
    _bookLabel.text=_user.favBook;
    _authorLabel.text=_user.favAuthor;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
