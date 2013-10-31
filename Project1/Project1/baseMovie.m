//
//  baseMovie.m
//  Project1
//
//  Created by Michele Laramore on 10/30/13.
//  Copyright (c) 2013 Michele Laramore. All rights reserved.
//

#import "baseMovie.h"

@implementation baseMovie


//create get and set methods for each property
@synthesize movieMinutes, movieCost, director, actors;

//initialize the base movie, creating the instance and setting movie minutes to zero

-(id)init
{
    self = [super init];
    if (self !=nil)
    {
        [self setMovieMinutes:0];
        [self setMovieCost:0];
        [self setDirector:nil];
        [self setActors:nil];
    }
    return self;
}

//calculation/manipulation method to figure cost per minute of making the movie

-(void)calculateMovieCostPerMinute;
{
    //statement written to log with current value
    
    _movieMinutesConv = movieCost/(float)movieMinutes;
    
    NSLog(@"This movie cost %.2f per minute to make", movieCost);
}

@end
