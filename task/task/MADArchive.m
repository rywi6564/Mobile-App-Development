//
//  MADArchive.m
//  task
//
//  Created by Ryan Wilding on 12/3/13.
//  Copyright (c) 2013 Ryan Wilding. All rights reserved.
//

#import "MADArchive.h"

@implementation MADArchive
#define kTask1key @"Task1"
#define kTask2key @"Task2"
#define kTask3key @"Task3"
#define kTask4key @"Task4"

-(void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:_taskone forKey:kTask1key];
    [aCoder encodeObject:_tasktwo forKey:kTask2key];
    [aCoder encodeObject:_taskthree forKey:kTask3key];
    [aCoder encodeObject:_taskfour forKey:kTask4key];
}

-(id)initWithCoder:(NSCoder *)aDecoder{
    if(self=[super init]){
        _taskone=[aDecoder decodeObjectForKey:kTask1key];
        _tasktwo=[aDecoder decodeObjectForKey:kTask2key];
        _taskthree=[aDecoder decodeObjectForKey:kTask3key];
        _taskfour=[aDecoder decodeObjectForKey:kTask4key];
        
    }
    return self;
}

-(id)copyWithZone:(NSZone *)zone{
    MADArchive *copy=[[[self class] allocWithZone:zone]init];
    copy.taskone=[self.taskone copyWithZone:zone];
    copy.tasktwo=[self.tasktwo copyWithZone:zone];
    copy.taskthree=[self.taskthree copyWithZone:zone];
    copy.taskfour=[self.taskfour copyWithZone:zone];
    return copy;
}

@end
