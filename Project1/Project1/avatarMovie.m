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

//customizing init to include unique data members

-(id)init
{
    self=[super init];
    if (self != nil)
    {
        [self setProductionCost:300000000];
        [self setProductionCushionCost:50000000];
        [self setMarketingCost:150000000];
        [self setMovieMinutes:162];
    }
    return self;
};

//overriding production cost to factor in unique data member

-(void)calculateProductionCostPerMinute;
{
    [self setProductionCost:(productionCost + productionCushionCost)];
    
    
    movieMinutesConv = (productionCost + marketingCost)/(float)movieMinutes;
    
    //statement written to log with current value
    NSLog(@"This movie cost %9.2f per minute to make", movieMinutesConv);
}



@end
