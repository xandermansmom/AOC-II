//
//  ViewController.m
//  Practice Project 8
//
//  Created by Michele Laramore on 11/12/13.
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
-(IBAction)onChange:(id)sender

{    UIPickerView *myPicker = (UIPickerView*)sender;
    
    if (myPicker != nil)
    
    {
    myArray = [[NSMutableArray alloc] initWithObjects:@"Michele", @"Chris", @"Tristan", @"Willow", @"Xander", nil];
    }
    
   }

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView;
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component;

{
    return 5;
}
@end
