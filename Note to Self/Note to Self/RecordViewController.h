//
//  RecordViewController.h
//  Note to Self
//
//  Created by Ryan Wilding on 12/14/13.
//  Copyright (c) 2013 Ryan Wilding. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <MessageUI/MessageUI.h> 

@interface RecordViewController : UIViewController <AVAudioRecorderDelegate, AVAudioPlayerDelegate, MFMailComposeViewControllerDelegate>

- (IBAction)recordPauseTapped:(id)sender;
- (IBAction)stoppedTapped:(id)sender;
- (IBAction)playTapped:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *recordPauseButton;
@property (weak, nonatomic) IBOutlet UIButton *stopButton;
@property (weak, nonatomic) IBOutlet UIButton *playButton;

- (IBAction)showEmail:(id)sender;
- (IBAction)postToFacebook:(id)sender;
- (IBAction)postToTwitter:(id)sender;

@end
