//
//  ViewController.m
//  Project 2
//
//  Created by Michele Laramore on 11/7/13.
//  Copyright (c) 2013 Michele Laramore. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
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
    
    //set variables for Sahara
    [sahara setProductionCost:145000000];
    [sahara setBribesCost:237386];
    [sahara setRewritesCost:4000000];
    [sahara setBookRightsCost:10000000];
    [sahara setTVRightsCost:10000000];
    [sahara setMarketingCost:35700000];
    [sahara setMovieMinutes:123];
    
    
    // Create Titanic Movie Data and List
    titanicMovie *titanic = (titanicMovie*)[movieFactory createMovie:TITANIC];
    
    //set variables for Titanic
    
    [titanic setProductionCost:200000000];
    [titanic setMovie3DConversionCost:18000000];
    [titanic setMarketingCost:20000000];
    [titanic setMovieMinutes:194];
    
    // Create Avatar Movie Data and List
    avatarMovie *avatar = (avatarMovie*)[movieFactory createMovie:AVATAR];
    
    //set variables for avatar
    [avatar setProductionCost:300000000];
    [avatar setProductionCushionCost:50000000];
    [avatar setMarketingCost:150000000];
    [avatar setMovieMinutes:162];
    
    [super viewDidLoad];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//on change function
-(IBAction)onChange:(id)sender
{
    //Name the segmented control
    UISegmentedControl *segmentControl =
    (UISegmentedControl*)sender;
    
    
    if(segmentControl != nil)
    {
        //if the segment control selected is at index 0, change the background color to yellow.
        if (segmentControl.selectedSegmentIndex == 0)
        {
            self.view.backgroundColor = [UIColor yellowColor];
            colorLabel.text = @"Yellow";
        }
        //if the segment control selected is at index 1, change the background color to green
        else if (segmentControl.selectedSegmentIndex == 1)
        {
            self.view.backgroundColor = [UIColor greenColor];
            colorLabel.text = @"Green";
        }
        //if the segment control selected is at index 2, change the background color to blue
        else if(segmentControl.selectedSegmentIndex == 2)
        {
            self.view.backgroundColor = [UIColor blueColor];
            colorLabel.text = @"Blue";
        }
    }
}

//Second view control with Name, project number and class name
-(IBAction)onClick:(id)sender;
{
    SecondViewController *viewController = [[SecondViewController alloc]initWithNibName:@"SecondaryView" bundle: nil];
    if(viewController != nil)
    {
        [self presentViewController:viewController animated:TRUE completion:nil];
    }
}

//Stepper Control to perform increase or decrease of numerical data for each subclass
-(IBAction)valueChange:(id)sender;
{
    UIStepper *stepControl = (UIStepper*)
    sender;
    if (stepperControl != nil)
    {
        float currentValue = stepperControl.value;
    }
}


//Buttons for subclass actions
-(IBAction)buttonHandler:(id)sender {
    if ([sender tag] == 0) {
        textField.text =@"Sahara";
    }
    else if ([sender tag] == 1) {
        textField.text = @"Titanic";
    }
    else if ([sender tag] == 2)
    {
        textField.text = @"Avatar";
    }
}

//Button for Calculation Method

-(IBAction)performCalculation:(UIButton *)sender
{
    //If Sahara button is enabled, take calculation for cost per minute for Sahara
    if ([buttonHandler tag] == 0) {
        saharaMovie *sahara = (saharaMovie*)[movieFactory createMovie:0];
        float saharaCostPerMinute = [sahara calculateProductionCostPerMinute] ;        
        
        //Format cost per minute in currency style for Sahara
        NSString *displaySaharaCostPerMinute = [NSNumberFormatter localizedStringFromNumber:@(saharaCostPerMinute) numberStyle:NSNumberFormatterCurrencyStyle];
        
        //Display Sahara total in textfield
        textField.text = [NSString stringWithFormat:@"cost %9@ per minute to make.", displaySaharaCostPerMinute];;
    }
    //If Titanic button is enabled, take the calculation for cost per minute for Titanic
    else if ([buttonHandler tag] == 1)
    {
        titanicMovie *titanic = (titanicMovie*)[movieFactory createMovie:1];
        float titanicCostPerMinute = [titanic calculateProductionCostPerMinute];
        
        //Format cost per minute in currency style for Titanic
        NSString *displayTitanicCostPerMinute = [NSNumberFormatter localizedStringFromNumber:@(titanicCostPerMinute)numberStyle:NSNumberFormatterCurrencyStyle];
        
        //Display Titanic total in textfield
        textField.text = [NSString stringWithFormat:@"cost %9@ per minute to make .", displayTitanicCostPerMinute];;
    }
    
    //If Avatar button is enabled, take the calculation for cost per minute for Avatar
    else if ([buttonHandler tag] == 2)
    {
        avatarMovie *avatar = (avatarMovie*)[movieFactory createMovie:2];
        float avatarCostPerMinute = [avatar calculateProductionCostPerMinute];
        
        //Format cost per minute in currency style for Avatar
        NSString *displayAvatarCostPerMinute = [NSNumberFormatter localizedStringFromNumber:@(avatarCostPerMinute)numberStyle:NSNumberFormatterCurrencyStyle];
        
        //Display Avatar total in textfield
        textField.text = [NSString stringWithFormat:@" cost %9@ per minute to make.", displayAvatarCostPerMinute];
        
    }
}




@end