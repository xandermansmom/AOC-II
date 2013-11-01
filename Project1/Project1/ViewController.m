//
//  ViewController.m
//  Project1
//
//  Created by Michele Laramore on 10/30/13.
//  Copyright (c) 2013 Michele Laramore. All rights reserved.
//

#import "ViewController.h"
#import "avatarMovie.h"
#import "titanicMovie.h"
#import "saharaMovie.h"

@interface ViewController ()


@end

@implementation ViewController


- (void)viewDidLoad
{
    avatarMovie *avatar = [[avatarMovie alloc] init];
    if (avatar != nil)
    {
     [avatar calculateProductionCostPerMinute];
    }
    
    titanicMovie *titanic = [[titanicMovie alloc] init];
        if (titanic !=nil)
        {
            [titanic calculateProductionCostPerMinute];
        }
    
    saharaMovie *sahara = [[saharaMovie alloc] init];
    if (sahara != nil)
    {
        [sahara calculateProductionCostPerMinute];
    }
        
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
