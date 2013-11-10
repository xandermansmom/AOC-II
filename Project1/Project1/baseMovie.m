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
@synthesize movieMinutes, productionCost, marketingCost, movieMinutesConv;
//initialize the base movie, creating the instance and setting movie minutes and movie cost to zero

-(id)init
{
    self = [super init];
    if (self !=nil)
    {
        [self setMovieMinutes:0];
        [self setProductionCost:0];
        [self setMarketingCost: 0];
    }
    return self;
}

//calculation/manipulation method to figure cost per minute of making the movie

-(float)calculateProductionCostPerMinute;
{
    //add marketing cost to production cost and divide by minutes of the movie which has been cast from an int to a float
    movieMinutesConv = (productionCost + marketingCost)/(float)movieMinutes;
    
    return movieMinutesConv;
}




@end
