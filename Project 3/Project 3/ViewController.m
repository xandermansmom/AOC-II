//
//  ViewController.m
//  Project 3
//
//  Created by Michele Laramore on 11/13/13.
//  Copyright (c) 2013 Michele Laramore. All rights reserved.
//

#import "ViewController.h"
#import "dateView.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{
    //Create a UILabel and place it at the top of the view. This is used as the title Application. Center the text for this label.
    
    dateLabel =[[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 770.0f, 50.0f)];
    if (dateLabel != nil)
    
    {
        dateLabel.text = @"Date Planner";
        dateLabel.textColor = [UIColor whiteColor];
        dateLabel.textAlignment = NSTextAlignmentCenter;
        dateLabel.backgroundColor = [UIColor colorWithRed:0.855 green:0.616 blue:1 alpha:1];
    }
    
    [self.view addSubview: dateLabel];

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


    -(void)didClose:eventData
               date:(NSString*)dateString;

    {
    //grab data from dateView
    eventData = [NSString stringWithFormat:@"%@\n%@\n\n\n", stringValue, date];
    
    //if no previous saves
    if ([textView.text isEqual: @"All the events go here."]) {
        textView.text =[[NSMutableString alloc] init];
    }
    
    //If there is preexisting data saved
    else {
        eventData =[[NSMutableString alloc] init];
        [NSMutableString appendString:eventData];
        [NSMutableString appendString:eventData];
      
        textView.text = eventData;
    }
}
    
 //Open date view page
-(IBAction)onClick:(id)sender
{
   dateViewButton = (UIButton*)sender;
    if (dateViewButton != nil)
    {
        dateView *openDateView = [[dateView alloc]
        initWithNibName:@"dateView" bundle: nil];
        if(openDateView != nil)
        {
            openDateView.delegate = self;
            [self presentViewController:openDateView animated: true completion: nil];
            
        }
        
    }
}


@end
