//
//  MADAnnotation.h
//  location
//
//  Created by Ryan Wilding on 11/21/13.
//  Copyright (c) 2013 Ryan Wilding. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface MADAnnotation : NSObject <MKAnnotation>

@property (nonatomic, readonly)CLLocationCoordinate2D coordinate;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *subtitle;

-(id) initWithCoordinate: (CLLocationCoordinate2D) coor;
-(void)moveAnnotation:(CLLocationCoordinate2D) newCoordinate;

@end
