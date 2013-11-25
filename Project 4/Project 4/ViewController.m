//
//  ViewController.m
//  Project 4
//
//  Created by Michele Laramore on 11/19/13.
//  Copyright (c) 2013 Michele Laramore. All rights reserved.
//

#import "ViewController.h"
#import "dataStorage.h"
#import "dateView.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{
    [dataStorage GetInstance];
    
    allEvents = [[NSMutableString alloc] init];
    
    formattedEvent = [[NSUserDefaults standardUserDefaults] objectForKey:@"saveData"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
}

//Set up swipe gesture
-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer
{
    //set direction of swipe gesture to right
    if (recognizer.direction == UISwipeGestureRecognizerDirectionRight)
    {
                //alocate and initialize dateView
                dateView *openDateView = [[dateView alloc]
                                          initWithNibName:@"dateView" bundle: nil];
                if(openDateView != nil)
                {
                    
                    [self presentViewController:openDateView animated: true completion: nil];
                    
            }
    }   
}

-(IBAction)onSave:(id)sender;
{
    NSString *saveData = formattedEvent;
    
    //declare defaults
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    //Sets the value of the specified default key
    [defaults setObject:formattedEvent forKey:@"saveData"];
    
    
    //check for empty string allocate and initialize alert message
     if (defaults == nil)
    {
        alert = [[UIAlertView alloc]initWithTitle:@"Did not save!"
                    message:@"Please enter an event."
                    delegate:self
                    cancelButtonTitle:@"Close"
                    otherButtonTitles: nil];
    }
    
    //Check for empty value
   else         
    {   //Allocate and intialize alert message for non empty value
        savedAlert = [[UIAlertView alloc]initWithTitle:@"Saved!"
                message: @"Your Event has been saved!"
                delegate: self
                cancelButtonTitle: @"Close"
                otherButtonTitles: nil];
               
    }
  
                //show alert
                if(alert)
                {
                    [alert show];
                }
        
                else if(savedAlert)
                {
                    [savedAlert show];
                }
    
        
    //actually saving the data
    [defaults synchronize];
    
    [self dismissViewControllerAnimated:true completion:nil];
    
    NSLog (@"%@", saveData);
    
}

-(void)viewWillAppear:(BOOL)animated
    {
        //allocate and initialize right swiper
        rightSwiper = [[UISwipeGestureRecognizer alloc]initWithTarget:self action: @selector(onSwipe:)];
        
        //set direction for swiper
        rightSwiper.direction = UISwipeGestureRecognizerDirectionRight;
        
        //add swipe gesture to the label
        [swipeLabel addGestureRecognizer:rightSwiper];
        
        //creating singleton string and date instances and formatting them
        dataStorage *newData = [dataStorage GetInstance];
        NSString *stringTest = newData.stringValue;
        NSString *dateTest = newData.dateString;
        if (stringTest)
            
        {
            formattedEvent =[NSString stringWithFormat: @"%@ \n %@ \n\n" ,stringTest, dateTest];
            
            [allEvents appendString:formattedEvent];
            textView.text = allEvents;
        }
        
        [super viewDidLoad];
    
        // Do any additional setup after loading the view, typically from a nib.
        }

-(BOOL)textFieldShouldReturn: (UITextField*)formattedEvent
{
    [self resignFirstResponder];
    return YES;  
}

-(void)applicationDidBecomeActive:(UIApplication*)application
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *stringValue;
    NSString *dateString;
    ViewController.myText = formattedEvent;
}
    
@end
