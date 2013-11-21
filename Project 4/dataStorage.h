//
//  dataStorage.h
//  Project 4
//
//  Created by Michele Laramore on 11/20/13.
//  Copyright (c) 2013 Michele Laramore. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface dataStorage : NSObject

//static method
+(dataStorage*)GetInstance;

//create instance
+(void)CreateInstance;

//instance method
-(void)printSettings;


@end
