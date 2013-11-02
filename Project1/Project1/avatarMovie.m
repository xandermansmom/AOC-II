//
//  avatarMovie.m
//  Project1
//
//  Created by Michele Laramore on 10/31/13.
//  Copyright (c) 2013 Michele Laramore. All rights reserved.
//

#import "avatarMovie.h"

@implementation avatarMovie

@synthesize productionCost, productionCushionCost, marketingCost, movieMinutesConv, movieMinutes;


//overriding production cost to factor in production cushion costs

-(float)calculateProductionCostPerMinute;
{
    
    //Add cushion cost to total production costs
    [self setProductionCost:(productionCost + productionCushionCost)];
    
    //Add marketing cost to new production cost total and divide by movie minutes which is cast from an int to a float
    movieMinutesConv = (productionCost + marketingCost)/(float)movieMinutes;
    
    //statement written to log showing cost per minute of making Avatar
    NSLog(@"Avatar cost $%9.2f per minute to make", movieMinutesConv);
    
    return movieMinutesConv;
}



@end
