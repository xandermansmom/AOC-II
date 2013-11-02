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
    
    // Create Sahara Movie Data and List
    saharaMovie *saharaActorNames = saharaActorNames;
    [movieFactory createActorNames:SAHARA];
    [saharaActorNames setActors:([[NSArray alloc]initWithObjects:@"Matthew McConauhey",@"Penelope Cruz", @"Steve Zahn", @"Willam H. Macy", @"Lambert Wilson", @"Rainn Wilson", nil])];
    
    // Create Labels and Display Information
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 300.0f, 25.0f)];
    if (titleLabel != nil) {
        titleLabel.text = @"Movies";
        titleLabel.textAlignment = NSTextAlignmentCenter;
        [titleLabel setFont:[UIFont boldSystemFontOfSize:22]];
        [self.view addSubview:titleLabel];
    }
    
    
    UILabel *saharaLabelOriginal= [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 110.0f, 300.0f, 40.0f)];
    if (saharaLabelOriginal != nil)
    {
        saharaLabelOriginal.text = [NSString stringWithFormat:@"Sahara was directed by %@. The actors in the movie were %@ and it cost $%9.2f to make." [director], [actors], [productionCost]];
        saharaLabelOriginal.numberOfLines = 2;
        [self.view addSubview: saharaLabelOriginal];
                                    
    }
    
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
