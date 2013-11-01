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
@synthesize movieMinutes, productionCost, marketingCost, director, actors,movieMinutesConv;


//initialize the base movie, creating the instance and setting movie minutes and movie cost to zero

-(id)init
{
    self = [super init];
    if (self !=nil)
    {
        [self setMovieMinutes:0];
        [self setProductionCost:0];
        [self setMarketingCost: 0];
        [self setDirector:nil];
        [self setActors:nil];
    }
    return self;
}

//calculation/manipulation method to figure cost per minute of making the movie

-(void)calculateProductionCostPerMinute;
{
    //add marketing cost to production cost and divide by minutes of the movie which has been cast from an int to a float
    movieMinutesConv = (productionCost + marketingCost)/(float)movieMinutes;
    
    //statement written to log with current value
    NSLog(@"This movie cost %9.2f per minute to make", movieMinutesConv);
}

@end
