//
//  MADMasterViewController.h
//  harrypotter
//
//  Created by Ryan Wilding on 10/31/13.
//  Copyright (c) 2013 Ryan Wilding. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MADDetailViewController;//breaks circular dependency

@interface MADMasterViewController : UITableViewController

@property (strong, nonatomic) MADDetailViewController *detailViewController;
@property (copy, nonatomic) NSArray *characters;
@end
