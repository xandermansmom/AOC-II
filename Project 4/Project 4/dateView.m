//
//  dateView.m
//  Project 4
//
//  Created by Michele Laramore on 11/19/13.
//  Copyright (c) 2013 Michele Laramore. All rights reserved.
//

#import "dateView.h"
#import "dataStorage.h"

@interface dateView ()


@end

@implementation dateView

-(void)didClose:eventData
{
   
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
      //  delegate = nil;
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

//set up swipe gesture
-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer
{
    //set up action and direction of swipe gesture
    if (recognizer.direction == UISwipeGestureRecognizerDirectionLeft)
    {
        ViewController *closeEvent = [[ViewController alloc]
                                  initWithNibName:@"ViewController" bundle: nil];
        
               //if there is no date chosen
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
                    
        
//create singleton instances of text and date data
NSString *eventString = eventText.text;
        dataStorage *newData = [dataStorage GetInstance];
        newData.stringValue = eventString;
        newData.dateString = dateString;
        
        [self presentViewController:closeEvent animated: true completion: nil];
        }
        
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
}

//editing of text field that allows you to prohibit return value
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
                
                //create a string from the date entered
                dateString = [formatDate stringFromDate:date];
                
                //assign and return date
                date = [NSString stringWithFormat: @"%@", dateString];            }
        }
        
    }   
}

//Left Swiper
-(void)viewWillAppear:(BOOL)animated
{
    //allocate and initialize left swiper
    leftSwiper = [[UISwipeGestureRecognizer alloc]initWithTarget:self action: @selector(onSwipe:)];
    
    //set direction for swiper
    leftSwiper.direction = UISwipeGestureRecognizerDirectionLeft;
    
    //add swipe gesture to the label
    [leftSwipeLabel addGestureRecognizer:leftSwiper];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


@end

