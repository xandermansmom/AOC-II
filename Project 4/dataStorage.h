//
//  dataStorage.h
//  Project 4
//
//  Created by Michele Laramore on 11/20/13.
//  Copyright (c) 2013 Michele Laramore. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface dataStorage : NSObject
{
    NSString *stringValue;
    NSString *dateString;
}

@property (nonatomic, retain) NSString *stringValue;
@property (nonatomic, retain) NSString *dateString;
@property (nonatomic, retain) UIButton *saveButton;

//static method
+(dataStorage*)GetInstance;



@end
