//
//  dataStorage.m
//  Project 4
//
//  Created by Michele Laramore on 11/20/13.
//  Copyright (c) 2013 Michele Laramore. All rights reserved.
//

#import "dataStorage.h"

@implementation dataStorage

//hold pointer to self
static dataStorage *_instance = nil;

//create instance
+(void)CreateInstance
    {
        if (_instance == nil)
        {
            [[self alloc]init];
        }    
    }


//Set pointer
+(dataStorage*)GetInstance
{
    return _instance;
}

+(id)alloc
{
    _instance = [super alloc];
    
    return _instance;
}


-(id)init
{
    if (self = [super init])
    {
        //init code here
    }
    return self;
}

-(void)printSettings
{
    
}

@end
