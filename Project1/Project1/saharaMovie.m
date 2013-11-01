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


//customizing init to include unique data members

-(id)init
{
    self=[super init];
    if (self != nil)
    {
        [self setProductionCost:145000000];
        [self setBribesCost:237386];
        [self setRewritesCost:4000000];
        [self setBookRightsCost:10000000];
        [self setTVRightsCost:10000000];
        [self setMarketingCost:35700000];
        [self setMovieMinutes:123];
    }
    return self;
};

//overriding production cost to factor in unique data members (cost of bribes, script rewrites, book rights and tv rights)

-(void)calculateProductionCostPerMinute;
{
    //add cost of bribes, rewrites, book rights and tv rights to the cost of production
    [self setProductionCost:(productionCost + bribesCost + rewritesCost + bookRightsCost + TVRightsCost)];
    
    //take new production cost, add to marketing cost and divide by minutes of the movie which has been cast from an int to a float
    movieMinutesConv = (productionCost + marketingCost)/(float)movieMinutes;
    
    //statement written to log showing cost per minute of making Sahara
    NSLog(@"Sahara cost $%9.2f per minute to make", movieMinutesConv);
}


@end
