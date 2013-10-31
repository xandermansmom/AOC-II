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
#import "tangledMovie.h"


@interface movieFactory : NSObject

+(baseMovie *)createMovie: (int)movieType;

@end
