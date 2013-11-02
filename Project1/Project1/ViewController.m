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
    
    //Create an NSArray of actor names. These items will be NSStrings. 
    NSString * matthew = @"Matthew McConauhey";
    NSString * penelope = @"Penelope Cruz";
    NSString * steve = @"Steve Zahn";
    NSString * william = @"William H. Macy";
    NSString * lambert = @"Lambert Wilson";
    NSString * rainn = @"Rainn Wilson";
    
    //Add NSStrings to actorsArray
    NSArray * actorsArray = [NSArray arrayWithObjects:matthew, penelope, steve, william, lambert, rainn, nil];
        
    //Create a variable of type NSMutableString and allocate it.
    NSMutableString * saharaActorMutableString = [[NSMutableString alloc]initWithCapacity:10];
    
    //Loop through the NSArray and append each of these items to the NSMutableString separated by commas. The last item should be preceded by an "and".
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
    
    //set variables for Sahara 
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
    
    //Create an NSArray of actor names. These items will be NSStrings.     
    NSString * leo = @"Leonardo DiCaprio";
    NSString * kate = @"Kate Winslet";
    NSString * billy = @"Billy Zane";
    NSString * gloria = @"Gloria Stewart";
    NSString * kathy = @"Kathy Bates";
    
    //Add NSStrings to titanicactorsArray
    NSArray * titanicactorsArray = [NSArray arrayWithObjects:leo,kate, billy, gloria, kathy, nil];
    
    //Create a variable of type NSMutableString and allocate it.
    NSMutableString * titanicActorMutableString = [[NSMutableString alloc]initWithCapacity:10];
    
    //Loop through the NSArray and append these items to the NSMutableString separated by commas. The last item will be preceded by an "and".
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
    
    //set variables for Titanic
    [titanic setDirector:@"James Cameron"];
    [titanic setProductionCost:200000000];
    [titanic setMovie3DConversionCost:18000000];
    [titanic setMarketingCost:20000000];
    [titanic setMovieMinutes:194];
    [titanic setActors:titanicActorMutableString];
      
    // Create Avatar Movie Data and List
    avatarMovie *avatar = (avatarMovie*)[movieFactory createMovie:AVATAR];
    
    //Create an NSArray of actor names. These items will be NSStrings. Add the items to the array.    
    NSString * zoe = @"Zoe Saldana";
    NSString * sam = @"Sam Worthington";
    NSString * sigourney = @"Sigourney Weaver";
    NSString * michelle = @"Michele Rodriguez";
    
    //Add NSStrings to avataractorsArray
    NSArray * avataractorsArray = [NSArray arrayWithObjects:zoe, sam, sigourney, michelle, nil];
    
    //Create a variable of type NSMutableString and allocate it.
    NSMutableString * avatarActorMutableString = [[NSMutableString alloc]initWithCapacity:10];
    
    //Loop through the NSArray created and append each of these items to NSMutableString separated by commas. The last item is preceded by an "and".
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
    
    //set variables for avatar
    [avatar setDirector:@"James Cameron"];
    [avatar setProductionCost:300000000];
    [avatar setProductionCushionCost:50000000];
    [avatar setMarketingCost:150000000];
    [avatar setMovieMinutes:162];
    [avatar setActors:avatarActorMutableString];
    
    
    //Create Labels and Display Information
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(310.0f, 10.0f, 100.0f, 30.0f)];
    if (titleLabel != nil)
    {
        titleLabel.text = @"Movies";
        titleLabel.textAlignment = NSTextAlignmentCenter;
        [titleLabel setFont:[UIFont boldSystemFontOfSize:26]];
        
        [self.view addSubview:titleLabel];
    }
    
    //Create label for Sahara
   saharaLabel = [[UILabel alloc] initWithFrame:CGRectMake(50.0f, 50.0f, 80.0f, 60.0f)];
    if (saharaLabel != nil)
    {
        saharaLabel.text = @"Sahara";
        saharaLabel.textColor =[UIColor  blueColor];
        [saharaLabel setFont:[UIFont boldSystemFontOfSize:20]];
        
        [self.view addSubview:saharaLabel];
    }
    
    int productionCost = sahara.productionCost;
    
    //format string to add commas to numerical output 
    NSString *displayProductionCost = [NSNumberFormatter localizedStringFromNumber:@(productionCost) numberStyle:NSNumberFormatterCurrencyStyle];
    
    //Create label for Sahara text
    saharaLabelOriginal= [[UILabel alloc] initWithFrame:CGRectMake(50.0f, 110.0f, 600.0f, 80.0f)];
    if (saharaLabelOriginal != nil)
    {
        saharaLabelOriginal.text = [NSString stringWithFormat:@"Sahara was directed by %@. The actors in the movie were %@ and it cost %9@ to make not counting marketing and additional costs.", sahara.director, sahara.actors, displayProductionCost];
        
        saharaLabelOriginal.numberOfLines = 10;
        
        [self.view addSubview: saharaLabelOriginal];
    }

      
    //Create label for Sahara Converted Data
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *saharaConvertedLabel = [[UILabel alloc] initWithFrame:CGRectMake(50.0f, 230.0f, 310.0f, 20.0f)];
    if (saharaConvertedLabel != nil)
    {
        saharaConvertedLabel.text = @"Sahara Converted Data";
        saharaConvertedLabel.textColor =[UIColor  redColor];
        [saharaConvertedLabel setFont:[UIFont boldSystemFontOfSize:20]];
        
        [self.view addSubview:saharaConvertedLabel];
    }
    
    //Create label for Sahara converted text
    saharaLabelConvertedData=[[UILabel alloc] initWithFrame:CGRectMake(50.0f, 260.0f, 600.0f, 50.0f)];
    if (saharaLabelConvertedData != nil)
    {
        float saharaCostPerMinute = [sahara calculateProductionCostPerMinute] ;
        
        NSString *displaySaharaCostPerMinute = [NSNumberFormatter localizedStringFromNumber:@(saharaCostPerMinute) numberStyle:NSNumberFormatterCurrencyStyle];
        
        saharaLabelConvertedData.text = [NSString stringWithFormat:@"Sahara cost %9@ per minute to make after adding marketing, bribes, rewrites, book rights and tv rights .", displaySaharaCostPerMinute];
        
        saharaLabelConvertedData.numberOfLines = 10;
        
        [self.view addSubview: saharaLabelConvertedData];
    }
    
    int titProductionCost = titanic.productionCost;
    
    //Format string to add commas in numerical output
    NSString *displayTitanicProductionCost = [NSNumberFormatter localizedStringFromNumber:@(titProductionCost) numberStyle:NSNumberFormatterCurrencyStyle];
    
    //Create label for Titanic
    titanicLabel = [[UILabel alloc] initWithFrame:CGRectMake(50.0f, 320.0f, 80.0f, 50.0f)];
    if (titanicLabel != nil)
    {
        titanicLabel.text = @"Titanic";
        titanicLabel.textColor =[UIColor  blueColor];
        [titanicLabel setFont:[UIFont boldSystemFontOfSize:20]];
        
        [self.view addSubview:titanicLabel];
    }
    
    //Create label for Titanic text
    titanicLabelOriginal= [[UILabel alloc] initWithFrame:CGRectMake(50.0f, 370.0f, 560.0f, 80.0f)];
    if (titanicLabelOriginal != nil)
    {
        titanicLabelOriginal.text = [NSString stringWithFormat:@"Titanic was directed by %@. The actors in the movie were %@ and it cost %9@ to make not counting marketing and additional costs.", titanic.director, titanic.actors, displayTitanicProductionCost];
        
        titanicLabelOriginal.numberOfLines = 10;
        
        [self.view addSubview: titanicLabelOriginal];
    }
    
    //Create label for Titanic Converted Data
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *titanicConvertedLabel = [[UILabel alloc] initWithFrame:CGRectMake(50.0f, 480.0f, 310.0f, 20.0f)];
    if (titanicConvertedLabel != nil)
    {
        titanicConvertedLabel.text = @"Titanic Converted Data";
        titanicConvertedLabel.textColor =[UIColor  redColor];
        [titanicConvertedLabel setFont:[UIFont boldSystemFontOfSize:20]];
        
        [self.view addSubview:titanicConvertedLabel];
    }
    
    //Create label for Titanic converted text
    titanicLabelConvertedData=[[UILabel alloc] initWithFrame:CGRectMake(50.0f, 510.0f, 600.0f, 50.0f)];
    if (titanicLabelConvertedData != nil)
    {
        float titanicCostPerMinute = [titanic calculateProductionCostPerMinute];
        
        NSString *displayTitanicCostPerMinute = [NSNumberFormatter localizedStringFromNumber:@(titanicCostPerMinute)numberStyle:NSNumberFormatterCurrencyStyle];
        
        titanicLabelConvertedData.text = [NSString stringWithFormat:@"Titanic cost %9@ per minute to make after adding marketing and 3D conversion costs.", displayTitanicCostPerMinute];
        
        titanicLabelConvertedData.numberOfLines = 10;
        
        [self.view addSubview: titanicLabelConvertedData];
    }
    
    int avatarProductionCost = avatar.productionCost;
    
    //Format string to add commas in numerical output
    NSString *displayAvatarProductionCost = [NSNumberFormatter localizedStringFromNumber:@(avatarProductionCost) numberStyle:NSNumberFormatterCurrencyStyle];
    
    //Create label for Avatar
    avatarLabel = [[UILabel alloc] initWithFrame:CGRectMake(50.0f, 580.0f, 80.0f, 30.0f)];
    if (avatarLabel != nil)
    {
        avatarLabel.text = @"Avatar";
        avatarLabel.textColor =[UIColor  blueColor];
        [avatarLabel setFont:[UIFont boldSystemFontOfSize:20]];
        
        [self.view addSubview:avatarLabel];
    }
    
    //Create label for Avatar text
    avatarLabelOriginal= [[UILabel alloc] initWithFrame:CGRectMake(50.0f, 620.0f, 600.0f, 75.0f)];
    if (avatarLabelOriginal != nil)
    {
        avatarLabelOriginal.text = [NSString stringWithFormat:@"Avatar was directed by %@. The actors in the movie were %@ and it cost %9@ to make not counting marketing and additional costs.", avatar.director, avatar.actors, displayAvatarProductionCost];
       
        avatarLabelOriginal.numberOfLines = 10;
        
        [self.view addSubview: avatarLabelOriginal];
    }
    
    //Create label for Avatar Converted Data
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *avatarConvertedLabel = [[UILabel alloc] initWithFrame:CGRectMake(50.0f, 720.0f, 310.0f, 15.0f)];
    if (avatarConvertedLabel != nil)
    {
        avatarConvertedLabel.text = @"Avatar Converted Data";
        avatarConvertedLabel.textColor =[UIColor  redColor];
        [avatarConvertedLabel setFont:[UIFont boldSystemFontOfSize:20]];
        
        [self.view addSubview:avatarConvertedLabel];
    }
    
    //Create label for Avatar converted text
    avatarLabelConvertedData=[[UILabel alloc] initWithFrame:CGRectMake(50.0f, 745.0f, 600.0f, 80.0f)];
    if (avatarLabelConvertedData != nil)
    {
        float avatarCostPerMinute = [avatar calculateProductionCostPerMinute];
        
        NSString *displayAvatarCostPerMinute = [NSNumberFormatter localizedStringFromNumber:@(avatarCostPerMinute)numberStyle:NSNumberFormatterCurrencyStyle];
		
        avatarLabelConvertedData.text = [NSString stringWithFormat:@"Avatar cost %9@ per minute to make after adding marketing and production cushion costs.", displayAvatarCostPerMinute];
        
        avatarLabelConvertedData.numberOfLines = 10;
        
        [self.view addSubview: avatarLabelConvertedData];
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
