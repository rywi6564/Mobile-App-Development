//
//  MajorViewController.h
//  ultimateBuff
//
//  Created by Ryan Wilding on 11/10/13.
//  Copyright (c) 2013 Ryan Wilding. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MajorViewController : UITableViewController <UITableViewDataSource, UITableViewDelegate>
@property (copy, nonatomic) NSArray *majors;
@end

