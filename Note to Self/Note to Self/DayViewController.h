//
//  DayViewController.h
//  Note to Self
//
//  Created by Ryan Wilding on 12/13/13.
//  Copyright (c) 2013 Ryan Wilding. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DayViewController : UITableViewController <UITableViewDataSource, UITableViewDelegate>
@property (copy, nonatomic) NSDictionary *days;
@end

