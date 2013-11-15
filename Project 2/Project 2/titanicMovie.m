//
//  titanicMovie.m
//  Project 2
//
//  Created by Michele Laramore on 11/14/13.
//  Copyright (c) 2013 Michele Laramore. All rights reserved.
//

#import "titanicMovie.h"

@implementation titanicMovie

@synthesize productionCost, movie3DConversionCost, marketingCost, movieMinutes, movieMinutesConv;



//overriding production cost to factor in unique data member(3D Conversion cost)

-(float)calculateProductionCostPerMinute;
{
    //add cost of converting the movie to 3D to the cost of production
    [self setProductionCost:(productionCost + movie3DConversionCost )];
    
    //take new production total, add to marketing cost and divide by minutes of the movie which is cast from an int to a float
    movieMinutesConv = (productionCost + marketingCost)/(float)movieMinutes;
    
    return movieMinutesConv;
}



@end

