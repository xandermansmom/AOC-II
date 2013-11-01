//
//  titanicMovie.m
//  Project1
//
//  Created by Michele Laramore on 10/31/13.
//  Copyright (c) 2013 Michele Laramore. All rights reserved.
//

#import "titanicMovie.h"

@implementation titanicMovie

@synthesize productionCost, movie3DConversionCost, marketingCost, movieMinutes, movieMinutesConv;


//customizing init to include unique data member 

-(id)init
{
    self=[super init];
    if (self != nil)
    {
        [self setProductionCost:200000000];
        [self setMovie3DConversionCost:18000000];
        [self setMarketingCost:20000000];
        [self setMovieMinutes:194];
    }
    return self;
};

//overriding production cost to factor in unique data member(3D Conversion cost)

-(void)calculateProductionCostPerMinute;
{
    //add cost of converting the movie to 3D to the cost of production
    [self setProductionCost:(productionCost + movie3DConversionCost )];
    
    //take new production total, add to marketing cost and divide by minutes of the movie which is cast from an int to a float
    movieMinutesConv = (productionCost + marketingCost)/(float)movieMinutes;
    
    //statement written to log showing cost per minute of making Titanic
    NSLog(@"Titanic cost $%9.2f per minute to make", movieMinutesConv);
}



@end
