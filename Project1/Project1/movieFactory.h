//
//  movieFactory.h
//  Project1
//
//  Created by Michele Laramore on 10/30/13.
//  Copyright (c) 2013 Michele Laramore. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "baseMovie.h"
#import "avatarMovie.h"
#import "titanicMovie.h"
#import "saharaMovie.h"


@interface movieFactory : NSObject

+(baseMovie *)createMovie:(int)movieType;

    //create movie data based on movie type
@end
