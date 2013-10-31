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
    COMEDY,
    ACTION,
    ROMANCE 
} movieEnum;


//data members for minutes of the movie, movie gross, director and array of actors

@property int *movieMinutes;
@property float *movieCost;
@property float *movieMinutesConv;
@property NSString *director;
@property NSArray *actors;

//initialize

-(id)init;

//calculation/manipulation method to figure cost per minute of making the movie

-(void)calculateMovieCostPerMinute;



@end
