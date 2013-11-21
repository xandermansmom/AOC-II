//
//  ViewController.m
//  Project 4
//
//  Created by Michele Laramore on 11/19/13.
//  Copyright (c) 2013 Michele Laramore. All rights reserved.
//

#import "ViewController.h"
#import "dataStorage.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{
    [dataStorage CreateInstance];
    
    [[dataStorage GetInstance] printSettings];
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



//Save data
-(IBAction)onSave:(id)sender;
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if (defaults != nil)
        
    {
        
    }
    
    [self dismissViewControllerAnimated:true completion:nil];
}


-(void)viewWillAppear:(BOOL)animated
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

-(void)didClose:eventData
{
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
}


@end
