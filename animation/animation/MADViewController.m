//
//  MADViewController.m
//  animation
//
//  Created by Ryan Wilding on 11/14/13.
//  Copyright (c) 2013 Ryan Wilding. All rights reserved.
//

#import "MADViewController.h"

@interface MADViewController ()

@end

@implementation MADViewController {
    CGPoint delta; //specifies how many points the image must move every time the timer fires
    NSTimer *timer;//the animation timer
    float ballRadius;//radius of the ball
    CGPoint translation;
}

-(IBAction)changeSliderValue
{
    _sliderLabel.text=[NSString stringWithFormat:@"%.2f", _slider.value];
    //creates a new timer object with the slider's timer interval
    timer = [NSTimer scheduledTimerWithTimeInterval:_slider.value //number of seconds between firings of the timer
                                              target:self
                                            selector:@selector(onTimer)
                                            userInfo:nil
                                             repeats:YES];
}

- (void)viewDidLoad
{   //ball radius is half the width of the image
    ballRadius=_imageView.frame.size.width/2;
    NSLog(@"raduis, %f", ballRadius);
    delta=CGPointMake(12.0, 4.0);
    [self changeSliderValue];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void) onTimer {
    [UIView beginAnimations:@"my_own_animation" context:nil];
    [UIView animateWithDuration:_slider.value
                          delay:0
                        options:UIViewAnimationOptionCurveEaseOut
                     animations:^{_imageView.transform=CGAffineTransformMakeTranslation(translation.x,translation.y);
                         translation.x +=delta.x;
                         translation.y += delta.y;}
                     completion:NULL];
     [UIView commitAnimations];
    _imageView.center =CGPointMake(_imageView.center.x + delta.x, _imageView.center.y +delta.y);
    if (_imageView.center.x > self.view.bounds.size.width - ballRadius || _imageView.center.x < ballRadius)
        delta.x = -delta.x;
    if (_imageView.center.y > self.view.bounds.size.height - ballRadius || _imageView.center.y < ballRadius)
        delta.y = -delta.y;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sliderMoved:(id)sender {
    [timer invalidate]; //stops the timer
    //must invalidate and create a new object to change its firing interval
    [self changeSliderValue];
}
@end
