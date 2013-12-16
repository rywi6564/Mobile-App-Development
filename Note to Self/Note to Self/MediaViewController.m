//
//  MediaViewController.m
//  Note to Self
//
//  Created by Ryan Wilding on 12/14/13.
//  Copyright (c) 2013 Ryan Wilding. All rights reserved.
//

#import "MediaViewController.h"

@interface MediaViewController ()

@end

@implementation MediaViewController {
    UIImage *image;
    NSURL *videoURL;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionButtonTapped:(id)sender {
    UIActionSheet *actionSheet = [[UIActionSheet alloc]
                                  initWithTitle:nil
                                  delegate:self
                                  cancelButtonTitle:nil
                                  destructiveButtonTitle:nil
                                  otherButtonTitles:nil];
    if (image|| videoURL)
    {
        [actionSheet addButtonWithTitle:@"Save"];
    }
    [actionSheet addButtonWithTitle:@"Camera Roll"];
    [actionSheet addButtonWithTitle:@"Cancel"]; 
    
    actionSheet.cancelButtonIndex=actionSheet.numberOfButtons - 1; 
    
    [actionSheet showInView:self.view]; 
}

- (IBAction)cameraButtonTapped:(id)sender {
    //checks the device to make sure it has a camera
    if ([UIImagePickerController
         isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
    {
        //initializes the controller
        UIImagePickerController *imagePickerController =
        [[UIImagePickerController alloc] init];
        //sets the delegate so it can find out when the picture is ready
        imagePickerController.delegate = self;
        //use the camera interface
        imagePickerController.sourceType =
        UIImagePickerControllerSourceTypeCamera;
        //display camera control
        imagePickerController.mediaTypes = [NSArray
                                            arrayWithObjects:(NSString *)kUTTypeImage,(NSString
                                                                                       *)kUTTypeMovie, nil];
        //slide up the camera interface
        [self presentViewController:imagePickerController
                           animated:YES completion:NULL]; 
    } 
    else 
    { 
        NSLog(@"Can't access the camera"); 
    } 
}

- (IBAction)selectPhoto:(id)sender {
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    [self presentViewController:picker animated:YES completion:NULL];

}

- (void)actionSheet:(UIActionSheet *)actionSheet
clickedButtonAtIndex:(NSInteger)buttonIndex

    {
        NSString *buttonTitle = [actionSheet buttonTitleAtIndex:buttonIndex];
        if ([buttonTitle isEqualToString:@"Save"])
        {
            if (image)
            {
                //saves the image to the camera roll
                UIImageWriteToSavedPhotosAlbum(image, self,
                                               @selector(image:didFinishSavingWithError:contextInfo:), nil);
            }
            else if (videoURL)
            {
                //convert URL to a string
                NSString *urlString = [videoURL path];
                //checks that the device can save video to the camera roll as not all devices can
                if (UIVideoAtPathIsCompatibleWithSavedPhotosAlbum(urlString))
                {//save video to the camera roll
                    UISaveVideoAtPathToSavedPhotosAlbum(urlString,self,
                                                        @selector(video:didFinishSavingWithError:contextInfo:), nil);
                }
            }
        }
        else if ([buttonTitle isEqualToString:@"Camera Roll"])
        {
            UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
            imagePickerController.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
            imagePickerController.mediaTypes = [UIImagePickerController availableMediaTypesForSourceType: UIImagePickerControllerSourceTypeSavedPhotosAlbum];
            imagePickerController.allowsEditing=NO;
            imagePickerController.delegate = self;
            [self presentViewController:imagePickerController animated:YES completion:NULL];
        }
        {
            }
    }

- (void)image:(UIImage *)image didFinishSavingWithError:(NSError
                                                         *)error contextInfo:(void *)contextInfo
{
    if (error)
    {
        NSLog(@"Error! %@", [error localizedDescription]);
    }
    else
    {
        UIAlertView *alertView = [[UIAlertView alloc]
                                  initWithTitle:@"Image saved"
                                  message:@"Image saved to camera roll."
                                  delegate:nil 
                                  cancelButtonTitle:nil 
                                  otherButtonTitles:@"OK", nil]; 
        [alertView show]; 
    } 
}

//called after successfully taking a picture or video
- (void)imagePickerController:(UIImagePickerController *)picker
didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    
    //determines whether it was a picture or a video
    NSString *mediaType = [info
                           objectForKey:UIImagePickerControllerMediaType];
    image = nil;
    _imageView.image = nil;
    videoURL=nil;
    if ([mediaType isEqualToString:(NSString *)kUTTypeImage])
        //picture
    {
        //the original, unmodified image from the camera
        UIImage *originalImage = [info
                                  objectForKey:UIImagePickerControllerOriginalImage];
        //the final, edited image if editing was enabled.
        UIImage *editedImage = [info
                                objectForKey:UIImagePickerControllerEditedImage];
        image = editedImage ? editedImage : originalImage;
        _imageView.image = image;
    }
    else if ([mediaType isEqualToString:(NSString *)kUTTypeMovie])
        //video
    {
        //the URL to the video location on disk
        videoURL= [info objectForKey:UIImagePickerControllerMediaURL];
    }

    [self dismissViewControllerAnimated:YES completion:NULL];
    
}

- (void)video:(NSString *)videoPath
didFinishSavingWithError:(NSError *)error contextInfo:(void*)contextInfo
{
    if (error)
    {
        NSLog(@"Error! %@", [error localizedDescription]);
    }
    else
    {
        UIAlertView *alertView = [[UIAlertView alloc]
                                  initWithTitle:@"Video saved" message:@"Video saved successfully to camera roll" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
        [alertView show];
    }
}


//called when the user taps the cancel button in the camera view
- (void)imagePickerControllerDidCancel:(UIImagePickerController 
                                        *)picker 
{ 
    [self dismissViewControllerAnimated:YES completion:NULL]; 
}


@end
