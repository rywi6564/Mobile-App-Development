//
//  ContinentInfoViewController.m
//  countries
//
//  Created by Ryan Wilding on 10/29/13.
//  Copyright (c) 2013 Ryan Wilding. All rights reserved.
//

#import "ContinentInfoViewController.h"

@interface ContinentInfoViewController ()
@end
@implementation ContinentInfoViewController 

-(void)viewWillAppear:(BOOL)animated {
    _continentName.text=_name;
    _countryNumber.text=_number;
}

-(id)initWithStyle:(UITableViewStyle)style
{
    self= [super initWithStyle:style];
    if (self) {
        
    }
    return self;
}

@end


