//
//  dataStorage.h
//  Project 4
//
//  Created by Michele Laramore on 11/20/13.
//  Copyright (c) 2013 Michele Laramore. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface dataStorage : NSObject

@property NSString *stringValue;
@property NSString *dateString;

//static method
+(dataStorage*)GetInstance;


@end
