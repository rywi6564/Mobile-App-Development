//
//  ContinentInfoViewController.h
//  countries
//
//  Created by Ryan Wilding on 10/29/13.
//  Copyright (c) 2013 Ryan Wilding. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContinentInfoViewController : UITableViewController

@property (copy,nonatomic) NSString *name;
@property (copy, nonatomic) NSString *number;
@property (weak, nonatomic) UILabel *continentName;
@property (weak, nonatomic) UILabel *countryNumber;
@end
