//
//  movieFactory.m
//  Project1
//
//  Created by Michele Laramore on 10/30/13.
//  Copyright (c) 2013 Michele Laramore. All rights reserved.
//

#import "movieFactory.h"

@implementation movieFactory

+(baseMovie *)createMovie: (int)movieType;
{
    return [[avatarMovie alloc] init];
    return [[titanicMovie alloc]init];
    return [[saharaMovie alloc] init];
}

@end
