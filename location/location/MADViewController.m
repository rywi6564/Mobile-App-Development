//
//  MADViewController.m
//  location
//
//  Created by Ryan Wilding on 11/21/13.
//  Copyright (c) 2013 Ryan Wilding. All rights reserved.
//

#import "MADViewController.h"
#import "MADAnnotation.h"

@interface MADViewController ()

@end

@implementation MADViewController {
    CLLocationManager *locationManager;
    MADAnnotation *annotation;
}

- (void)viewDidLoad
{
    locationManager=[[CLLocationManager alloc] init];
    locationManager.delegate=self;
    //specify the desired accuracy
    locationManager.desiredAccuracy=kCLLocationAccuracyBest;
    //specify the distance a device must move laterally(in meters) to generate an update. Notified of all movements
    locationManager.distanceFilter=kCLDistanceFilterNone;
    //starts the location manager
    [locationManager startUpdatingLocation];
    _mapView.delegate=self;
    _mapView.mapType=MKMapTypeHybrid;    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

//called when a new location value is available
- (void)locationManager:(CLLocationManager *)manager
     didUpdateLocations:(NSArray *)locations{
    _latitudeLabel.text=[[NSString alloc] initWithFormat:@"%f",
                         manager.location.coordinate.latitude]; //assign the latitude as a string to the text field
    _longitudeLabel.text=[[NSString alloc] initWithFormat:@"%f",
                          manager.location.coordinate.longitude]; //assign the longitude as a string to the text field
    _altitudeLabel.text=[[NSString alloc] initWithFormat:@"%f",
                         manager.location.altitude]; //assign the accuracy as a string to the text field
    _accuracyLabel.text=[[NSString alloc] initWithFormat:@"%f", 
                         manager.location.horizontalAccuracy]; //assign the accuracy as a  string to the text field
    //update the map
    MKCoordinateSpan span; //defines the area spanned by a map region
    span.latitudeDelta=.001; //the amount of north-to-south distance (measured in degrees) to display on the map
    span.longitudeDelta=.001; //the amount of east-to-west distance (measured in degrees) to display for the map region.
    MKCoordinateRegion region; //region of the map to be displayed
    region.center= manager.location.coordinate; //sets the center of the region to be the newLocation
    region.span=span; //sets the horizontal and vertical span of the map to display
    [_mapView setRegion:region animated:YES]; //animates changing the currently visible region
    if(annotation) {
        [annotation moveAnnotation:manager.location.coordinate];
    }
    else {
        annotation=[[MADAnnotation alloc] initWithCoordinate:manager.location.coordinate];
        [_mapView addAnnotation:annotation]; //adds the annotation to the mapview
    }
    
}

-(void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
    NSString *errorType;
    if (error.code == kCLErrorDenied) {
        errorType=@"Access Denied";
    }
    else errorType=@"Error";
    UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Error"
                                            message:errorType
                                            delegate:nil
                                            cancelButtonTitle:@"OK"
                                            otherButtonTitles:nil];
                        [alert show];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
