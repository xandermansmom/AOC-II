//
//  ViewController.m
//  Project 4
//
//  Created by Michele Laramore on 11/19/13.
//  Copyright (c) 2013 Michele Laramore. All rights reserved.
//

#import "ViewController.h"
#import "dateView.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{
    
    //allocate and initialize right swiper
    rightSwiper = [[UISwipeGestureRecognizer alloc]initWithTarget:self action: @selector(onSwipe:)];
    
    //set direction for swiper
    rightSwiper.direction = UISwipeGestureRecognizerDirectionRight;
    
    //add swipe gesture to the label
    [swipeLabel addGestureRecognizer:rightSwiper];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer
{
    if (recognizer.direction == UISwipeGestureRecognizerDirectionRight)
    {
                dateView *openDateView = [[dateView alloc]
                                          initWithNibName:@"dateView" bundle: nil];
                if(openDateView != nil)
                {
                    
                    [self presentViewController:openDateView animated: true completion: nil];
                    
                }
                
    }
}



-(void)didClose:eventData
{
    //grab data from dateView
    
    {
        if (!allEvents)
        {
            allEvents = [[NSMutableString alloc] initWithCapacity:0];
        }
        [allEvents appendString: eventData];
        textView.text = allEvents;
    }
}


//Save data
-(IBAction)onSave:(id)sender;
{
    {
        saveButton = (UIButton*)sender;
        if (!date)
            
        {
            //initialize dateformatter
            NSDateFormatter *formatDate = [[NSDateFormatter alloc] init];
            
            if (formatDate != nil)
            {
                //set date no earlier than today's date
                date = [NSDate date];
                
                //set date format
                [formatDate setDateFormat:@"MMMM dd, @ h:mm a"];
                
                dateString = [formatDate stringFromDate:date];
                
                //assign and return date
                date = [NSMutableString stringWithFormat:@"The date of the event is %@", dateString];
                
            }
        }
        
        //check for string
        if (stringValue != nil)
        {
            //join text and date in a string
            eventData = [NSMutableString stringWithFormat:@"%@ \n %@ \n\n", stringValue, date];
            
           // [delegate didClose:eventData];
        }
        
        [self dismissViewControllerAnimated:true completion:nil];
    }
    
 
}


- (IBAction)swipeRightDetected:(UIGestureRecognizer *)sender
{
    dateView *dateViewPage=[[dateView alloc] initWithNibName:@"dateViewPage" bundle:nil];
    [self presentViewController:dateViewPage animated:YES completion:nil];
}


@end
