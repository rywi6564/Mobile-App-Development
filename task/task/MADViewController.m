//
//  MADViewController.m
//  task
//
//  Created by Ryan Wilding on 12/3/13.
//  Copyright (c) 2013 Ryan Wilding. All rights reserved.
//

#import "MADViewController.h"
#import "MADArchive.h"

@interface MADViewController ()

@end

@implementation MADViewController

#define kFilename @"archive"//archive file name
#define kDataKey @"Data"//key value for encoding



-(NSString *)dataFilePath {
    //locates the document directory
    NSArray *paths=NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *docDirectory=[paths objectAtIndex:0];
    //creates the full path to our data file
    return [docDirectory stringByAppendingPathComponent:kFilename];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSString *filePath=[self dataFilePath];
    //check to see if the file exists
    if([[NSFileManager defaultManager] fileExistsAtPath:filePath]) {
        //load the contents of the file into an array
        NSData *data=[[NSMutableData alloc]initWithContentsOfFile:[self dataFilePath]];
        NSKeyedUnarchiver *unarchiver=[[NSKeyedUnarchiver alloc] initForReadingWithData:data];
        MADArchive *taskArchive=[unarchiver decodeObjectForKey:kDataKey];
        [unarchiver finishDecoding];//tell the unarchiver we're finished
        //copy values from the ordered array into the text fields
        _task1.text=taskArchive.taskone;
        _task2.text=taskArchive.tasktwo;
        _task3.text=taskArchive.taskthree;
        _task4.text=taskArchive.taskfour;
    }
	// Do any additional setup after loading the view, typically from a nib.
    UIApplication *app=[UIApplication sharedApplication];//application instance
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(applicationWillResignActive:)             name:UIApplicationWillResignActiveNotification
     //notification posted when the app is no longer active
                                               object:app];
     //the object we're getting the notification from
}

-(void)applicationWillResignActive:(NSNotification *)notification {
    MADArchive *taskArchive=[[MADArchive alloc]init];
    taskArchive.taskone=_task1.text;
    taskArchive.tasktwo=_task2.text;
    taskArchive.taskthree=_task3.text;
    taskArchive.taskfour=_task4.text;
    
    NSMutableData *data=[[NSMutableData alloc]init];
    
    NSKeyedArchiver *archiver=[[NSKeyedArchiver alloc]initForWritingWithMutableData:data];
    
    [archiver encodeObject:taskArchive forKey:kDataKey];
    [archiver finishEncoding];
    
    [data writeToFile:[self dataFilePath] atomically:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
