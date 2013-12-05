//
//  MADViewController.h
//  media1
//
//  Created by Ryan Wilding on 11/19/13.
//  Copyright (c) 2013 Ryan Wilding. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MobileCoreServices/MobileCoreServices.h>

@interface MADViewController : UIViewController <UIImagePickerControllerDelegate, UIActionSheetDelegate,UINavigationControllerDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
- (IBAction)actionButtonTapped:(UIBarButtonItem *)sender;
- (IBAction)cameraButtonTapped:(UIBarButtonItem *)sender;

@end
