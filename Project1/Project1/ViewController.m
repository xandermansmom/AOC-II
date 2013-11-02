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
    saharaMovie *sahara = (saharaMovie*)[movieFactory createMovie:SAHARA];
    
    //Create an NSArray of actor names. These items will be NSStrings. Add the items to the array.
    
    NSString * matthew = @"Matthew McConauhey";
    NSString * penelope = @"Penelope Cruz";
    NSString * steve = @"Steve Zahn";
    NSString * william = @"William H. Macy";
    NSString * lambert = @"Lambert Wilson";
    NSString * rainn = @"Rainn Wilson";
    
    NSArray * actorsArray = [NSArray arrayWithObjects:matthew, penelope, steve, william, lambert, rainn, nil];
        
    //Create a variable of type NSMutableString and allocate it.
    
    NSMutableString * saharaActorMutableString = [[NSMutableString alloc]initWithCapacity:10];
    
    //Loop through the NSArray you created and append each of these items to your NSMutableString separated by commas. The last item should be preceded by an "and" (For example: dinosaurs, jeeps, storm, giant turkeys, and eating people).
    for (int i = 0; i <[actorsArray count]; i++)
    {
        if (i == [actorsArray count] - 2) {
            [saharaActorMutableString appendString:[NSString stringWithFormat:@"%@, and ", actorsArray[i]]];
        }
        else if (i == [actorsArray count] - 1) {
            [saharaActorMutableString appendString:[NSString stringWithFormat:@"%@", actorsArray[i]]];
        }
        else {
            [saharaActorMutableString appendString:[NSString stringWithFormat:@"%@, ", actorsArray[i]]];
        }
    }
    
    [sahara setDirector: @"Brent Eisner"];
    [sahara setProductionCost:145000000];
    [sahara setBribesCost:237386];
    [sahara setRewritesCost:4000000];
    [sahara setBookRightsCost:10000000];
    [sahara setTVRightsCost:10000000];
    [sahara setMarketingCost:35700000];
    [sahara setMovieMinutes:123];
    [sahara setActors:saharaActorMutableString];
    
    
    // Create Titanic Movie Data and List
    titanicMovie *titanic = (titanicMovie*)[movieFactory createMovie:TITANIC];
    
    //Create an NSArray of actor names. These items will be NSStrings. Add the items to the array.
    
    NSString * leo = @"Leonardo DiCaprio";
    NSString * kate = @"Kate Winslet";
    NSString * billy = @"Billy Zane";
    NSString * gloria = @"Gloria Stewart";
    NSString * kathy = @"Kathy Bates";
    
    NSArray * titanicactorsArray = [NSArray arrayWithObjects:leo,kate, billy, gloria, kathy, nil];
    
    //Create a variable of type NSMutableString and allocate it.
    
    NSMutableString * titanicActorMutableString = [[NSMutableString alloc]initWithCapacity:10];
    
    //Loop through the NSArray you created and append each of these items to your NSMutableString separated by commas. The last item should be preceded by an "and" (For example: dinosaurs, jeeps, storm, giant turkeys, and eating people).
    for (int i = 0; i <[titanicactorsArray count]; i++)
    {
        if (i == [titanicactorsArray count] - 2) {
            [titanicActorMutableString appendString:[NSString stringWithFormat:@"%@, and ", actorsArray[i]]];
        }
        else if (i == [titanicactorsArray count] - 1) {
            [titanicActorMutableString appendString:[NSString stringWithFormat:@"%@", titanicactorsArray[i]]];
        }
        else {
            [titanicActorMutableString appendString:[NSString stringWithFormat:@"%@, ", titanicactorsArray[i]]];
        }
    }
        
    [titanic setProductionCost:200000000];
    [titanic setMovie3DConversionCost:18000000];
    [titanic setMarketingCost:20000000];
    [titanic setMovieMinutes:194];
    
    // Create Avatar Movie Data and List
    avatarMovie *avatar = (avatarMovie*)[movieFactory createMovie:AVATAR];
    
    //Create an NSArray of actor names. These items will be NSStrings. Add the items to the array.
    
    NSString * zoe = @"Zoe Saldana";
    NSString * sam = @"Sam Worthington";
    NSString * sigourney = @"Sigourney Weaver";
    NSString * michelle = @"Michele Rodriguez";
    
    NSArray * avataractorsArray = [NSArray arrayWithObjects:zoe, sam, sigourney, michelle, nil];
    
    //Create a variable of type NSMutableString and allocate it.
    
    NSMutableString * avatarActorMutableString = [[NSMutableString alloc]initWithCapacity:10];
    
    //Loop through the NSArray you created and append each of these items to your NSMutableString separated by commas. The last item should be preceded by an "and" (For example: dinosaurs, jeeps, storm, giant turkeys, and eating people).
    for (int i = 0; i <[avataractorsArray count]; i++)
    {
        if (i == [avataractorsArray count] - 2) {
            [avatarActorMutableString appendString:[NSString stringWithFormat:@"%@, and ", actorsArray[i]]];
        }
        else if (i == [avataractorsArray count] - 1) {
            [avatarActorMutableString appendString:[NSString stringWithFormat:@"%@", avataractorsArray[i]]];
        }
        else {
            [avatarActorMutableString appendString:[NSString stringWithFormat:@"%@, ", avataractorsArray[i]]];
        }
    }
    
    [avatar setProductionCost:300000000];
    [avatar setProductionCushionCost:50000000];
    [avatar setMarketingCost:150000000];
    [avatar setMovieMinutes:162];
    
    // Create Labels and Display Information
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(300.0f, 10.0f, 100.0f, 30.0f)];
    if (titleLabel != nil)
    {
        titleLabel.text = @"Movies";
        titleLabel.textAlignment = NSTextAlignmentCenter;
        [titleLabel setFont:[UIFont boldSystemFontOfSize:26]];
        [self.view addSubview:titleLabel];
    }
    
   saharaLabel = [[UILabel alloc] initWithFrame:CGRectMake(50.0f, 50.0f, 80.0f, 60.0f)];
    if (saharaLabel != nil)
    {
        saharaLabel.text = @"Sahara";
        saharaLabel.textColor =[UIColor  blueColor];
        [saharaLabel setFont:[UIFont boldSystemFontOfSize:20]];
        [self.view addSubview:saharaLabel];
    }
    
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *saharaConvertedLabel = [[UILabel alloc] initWithFrame:CGRectMake(50.0f, 300.0f, 310.0f, 10.0f)];
    if (saharaConvertedLabel != nil)
    {
        saharaConvertedLabel.text = @"Sahara Converted Data";
        saharaConvertedLabel.textColor =[UIColor  redColor];
        [saharaConvertedLabel setFont:[UIFont boldSystemFontOfSize:20]];
        [self.view addSubview:saharaConvertedLabel];
    }
    
   saharaLabelOriginal= [[UILabel alloc] initWithFrame:CGRectMake(50.0f, 80.0f, 600.0f, 120.0f)];
    if (saharaLabelOriginal != nil)
    {
        saharaLabelOriginal.text = [NSString stringWithFormat:@"Sahara was directed by %@. The actors in the movie were %@ and it cost $%9.2f to make not counting marketing and additional costs.", sahara.director, sahara.actors, sahara.productionCost];
        saharaLabelOriginal.numberOfLines = 10;
        [self.view addSubview: saharaLabelOriginal];
    }
    
    saharaLabelConvertedData=[[UILabel alloc] initWithFrame:CGRectMake(50.0f, 200.0f, 600.0f, 100.0f)];
    if (saharaLabelConvertedData != nil)
    {
        saharaLabelConvertedData.text = [NSString stringWithFormat:@"Sahara cost $%9.2f per minute to make after adding marketing, bribes, rewrites, book rights and tv rights.", sahara.movieMinutesConv];
        saharaLabelConvertedData.numberOfLines = 10;
        [self.view addSubview: saharaLabelConvertedData];
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
