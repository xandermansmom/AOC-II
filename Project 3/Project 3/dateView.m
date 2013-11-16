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
        //initialize dateformatter
        NSDateFormatter *formatDate = [[NSDateFormatter alloc] init];
        if (formatDate != nil)
            
         {
             //set date no earlier than today's date
             date = picker.date;
             
             //set date format
             [formatDate setDateFormat:@"MMMM dd, @ h:mm a"];
             
             dateString = [formatDate stringFromDate:date];
             
             //return date
             date = [NSString stringWithFormat:@"The date of the event is %@", dateString];
             
             if ([dateString isEqual: @""])
             {
                dateString = @"There are currently no events scheduled.";
             }
             else
             {
                 = date;
             }
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
        eventData  = [NSMutableString stringWithFormat:@"%@ /n %@ ", stringValue, date];
        
        [delegate didClose:eventData];
    }
    [self dismissViewControllerAnimated:true completion:nil];
}


@end

