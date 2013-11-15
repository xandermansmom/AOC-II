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

@synthesize delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
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


//Save date and Event data
-(IBAction)onSave:(id)sender
{
UIButton *saveThisButton = (UIButton*)sender;
    if (saveThisButton != nil)
    {
        {
           
        }    }
}

//Close Keyboard
-(IBAction)closeKeyboard:(id)sender
{
    UIButton *closeThisButton = (UIButton*)sender;
    if (closeThisButton != nil)
    {
       [self.view endEditing:YES];
    }
}

//Text Field for Event Data 
-(IBAction)eventText:(id)sender
{
    UITextField *myText = (UITextField*)sender;
    if(myText != nil)
    {
        stringValue = [myText text]; 
    }
    
      NSLog(@"%@", stringValue);}

//Date Picker
-(IBAction)datePicker:(id)sender

{
    UIDatePicker *picker = (UIDatePicker*)sender;    
    if(picker !=nil)
        
    {
        //set minimum date to current date
        picker.MinimumDate = [NSDate date];
      
    {
        //format date
        NSDateFormatter *formatDate = [[NSDateFormatter alloc] init];
        if (formatDate != nil)
            
         {
            [formatDate setDateFormat:@"MMMM dd, @ h:mm a"];
             NSDate *date = picker.date;
             NSLog(@"date = %@", [date description]);
         }
    }   
        
    }
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    textField.text = @"";
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (delegate != nil)
    {
        [delegate DidClose:textField.text];
    }
      [self dismissViewControllerAnimated:true completion:nil];
        return true;
    
    }

@end
