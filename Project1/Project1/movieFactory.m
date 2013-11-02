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
        if (movieType == SAHARA) {
            return [[saharaMovie alloc] init];
        } else if (movieType == TITANIC) {
            return [[titanicMovie alloc] init];
        } else if (movieType == AVATAR) {
            return [[avatarMovie alloc] init];
        } else {
            return nil;
        }
    }
  
   
@end
