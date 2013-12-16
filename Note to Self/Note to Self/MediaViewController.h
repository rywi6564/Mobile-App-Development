//
//  MediaViewController.h
//  Note to Self
//
//  Created by Ryan Wilding on 12/14/13.
//  Copyright (c) 2013 Ryan Wilding. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MobileCoreServices/MobileCoreServices.h> 
#import <MediaPlayer/MediaPlayer.h>
#import <MessageUI/MessageUI.h>


@interface MediaViewController : UIViewController <UIImagePickerControllerDelegate, UIActionSheetDelegate,
UINavigationControllerDelegate, MFMailComposeViewControllerDelegate> {
    UIImage *selectedImage;
}
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
- (IBAction)actionButtonTapped:(id)sender;
- (IBAction)cameraButtonTapped:(id)sender;
- (IBAction)selectPhoto:(id)sender;

@end
