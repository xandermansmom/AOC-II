//
//  saharaMovie.h
//  Project1
//
//  Created by Michele Laramore on 11/1/13.
//  Copyright (c) 2013 Michele Laramore. All rights reserved.
//

#import "baseMovie.h"


@interface saharaMovie : baseMovie

//data members for manipulating production cost data
@property float bribesCost, rewritesCost, bookRightsCost, TVRightsCost;
@property NSString *director;
@property NSArray *saharaActorNames;

@end