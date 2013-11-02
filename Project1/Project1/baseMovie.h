//
//  baseMovie.h
//  Project1
//
//  Created by Michele Laramore on 10/30/13.
//  Copyright (c) 2013 Michele Laramore. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface baseMovie : NSObject

{
    int movieEnum;
}

typedef enum {
    AVATAR,
    TITANIC,
    SAHARA 
} movieEnum;


//data members for minutes of the movie, movie gross, director and array of actors

@property int movieMinutes;
@property float productionCost;
@property float marketingCost;
@property float movieMinutesConv;
@property NSString *director;
@property NSMutableString *actors;

//calculation/manipulation method to figure cost per minute of making the movie

-(float)calculateProductionCostPerMinute;

@end
