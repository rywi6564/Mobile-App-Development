//
//  CountryViewController.h
//  countries
//
//  Created by Ryan Wilding on 10/29/13.
//  Copyright (c) 2013 Ryan Wilding. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"

@interface CountryViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *countryTextField;
@property (copy, nonatomic) NSString *addedCountry;

@end
