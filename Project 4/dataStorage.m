//
//  dataStorage.m
//  Project 4
//
//  Created by Michele Laramore on 11/20/13.
//  Copyright (c) 2013 Michele Laramore. All rights reserved.
//

#import "dataStorage.h"

@implementation dataStorage

static dataStorage *_instance = nil;

+(dataStorage*)GetInstance
{
    if (_instance == nil)
    {
        [[self alloc]init];
    }
    return _instance;
}


@end
