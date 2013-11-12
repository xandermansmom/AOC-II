//
//  ViewController.m
//  Practice 8
//
//  Created by Michele Laramore on 11/11/13.
//  Copyright (c) 2013 Michele Laramore. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView;
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component;
{
    return [itemsArray count];
}

-(IBAction)onChange:(id)sender

{
    UIPickerView *myPickerView = [NSMutableArray itemsArray];
    itemsArray = [[NSMutableArray alloc] initWithObjects:@"Michele", @"Chris", @"Tristan", @"Willow", @"Xander", nil];
    
    if(itemsArray != nil)
        
    {
        NSLog(@"You selected this: %@", [itemsArray objectAtIndex: row]);
    }
}

@end
