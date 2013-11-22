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
     
    //Store the data
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if (defaults != nil)
        
    {
        [defaults setObject:saveData forKey:@"saveButton"];
        
        [defaults synchronize];
         
    }
        [self dismissViewControllerAnimated:true completion:nil];
    
    NSLog (@"%@", formattedEvent);
    }


// Create strings and integer to store the text info

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
        formattedEvent =[NSString stringWithFormat: @"%@ \n %@ \n\n"
                         ,stringTest, dateTest];
        
                   
        //No previous events entered
        
        if (textView.text == nil)
        {
            if (formattedEvent == nil)
            {
                textView.text =[NSString stringWithFormat:@"All the events go here...."];
            }
            else
                {
                if([textView.text isEqual:@"All the events go here...."])
                {
                    textView.text = formattedEvent;
                }
                    NSLog(@"%@", formattedEvent);
            }

        //if previous events entered
        if (!allEvents)
                {
                    allEvents = [[NSString alloc] init];
                    textView.text = allEvents;
                }
            
        //if there is previously saved events
            else
            {
                allEvents = [[NSString alloc]init];
                [allEvents stringByAppendingString:formattedEvent];
                textView.text = allEvents;
                NSLog(@"%@", allEvents);
            }
        
        [super viewDidLoad];
    
        // Do any additional setup after loading the view, typically from a nib.
        }
}
    

@end
