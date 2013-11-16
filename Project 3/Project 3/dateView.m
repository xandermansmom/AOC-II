//
//  dateView.m
//  Project 3
//
//  Created by Michele Laramore on 11/13/13.
//  Copyright (c) 2013 Michele Laramore. All rights reserved.
//

#import "dateView.h"

@interface dateView ()


@end

@implementation dateView

-(void)didClose:eventData
{
   
}

@synthesize delegate;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        delegate = nil;
    }
    return self;
}

- (void)viewDidLoad
{
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//Close Keyboard
-(IBAction)closeKeyboard:(id)sender
{
    closeButton = (UIButton*)sender;
    if (closeButton != nil)
    {
       [self.view endEditing:YES];
    }
}

//Text Field for Event Data 
-(IBAction)eventText:(id)sender
{
    myText = (UITextField*)sender;
    if(myText != nil)
    {
       stringValue = [myText text];
    }
    NSLog(@"%@", stringValue);
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    textField.text = @"";
    
    return true;
}

//Date Picker
-(IBAction)datePicker:(id)sender

{
    picker = (UIDatePicker*)sender;    
    if(picker !=nil)
        
    {
        //set minimum date to current date
        picker.MinimumDate = [NSDate date];
      
    {
        //format date
        NSDateFormatter *formatDate = [[NSDateFormatter alloc] init];
        if (formatDate != nil)
            
         {
             date = picker.date;
             [formatDate setDateFormat:@"MMMM dd, @ h:mm a"];
             NSLog(@"date = %@", [date description]);
         }
    }   
        
    }
}

//Save date and Event data
-(IBAction)onSave:(id)sender
{
    saveThis = (UIButton*)sender;
    if ((stringValue != nil) && (date !=nil))
    {
      eventData  = [NSMutableString stringWithFormat:@"There is a \"%@\" \n \t on %@ \n \n", stringValue, date];
        
        [delegate didClose:eventData];
    }
    [self dismissViewControllerAnimated:true completion:nil];
}


@end

