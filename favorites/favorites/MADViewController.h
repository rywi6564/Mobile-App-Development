//
//  MADViewController.h
//  favorites
//
//  Created by Ryan Wilding on 10/10/13.
//  Copyright (c) 2013 Ryan Wilding. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Favorite.h"

@interface MADViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *bookLabel;
@property (weak, nonatomic) IBOutlet UILabel *authorLabel;
@property (strong, nonatomic)Favorite *user;

@end
