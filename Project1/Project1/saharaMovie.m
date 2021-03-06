//
//  saharaMovie.m
//  Project1
//
//  Created by Michele Laramore on 11/1/13.
//  Copyright (c) 2013 Michele Laramore. All rights reserved.
//

#import "saharaMovie.h"

@implementation saharaMovie

@synthesize productionCost, bribesCost,rewritesCost,bookRightsCost,TVRightsCost, marketingCost, movieMinutesConv, movieMinutes;


//overriding production cost to factor in unique data members (cost of bribes, script rewrites, book rights and tv rights)

-(float)calculateProductionCostPerMinute;

{
    //add cost of bribes, rewrites, book rights and tv rights to the cost of production
    [self setProductionCost:(productionCost + bribesCost + rewritesCost + bookRightsCost + TVRightsCost)];
    
    //take new production cost, add to marketing cost and divide by minutes of the movie which has been cast from an int to a float
    movieMinutesConv = (productionCost + marketingCost)/(float)movieMinutes;
    
       
    return movieMinutesConv;
}


@end
