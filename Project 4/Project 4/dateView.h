//
//  dateView.h
//  Project 4
//
//  Created by Michele Laramore on 11/19/13.
//  Copyright (c) 2013 Michele Laramore. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@protocol dateViewDelegate<NSObject>

@required
-(void)didClose:eventData;

@end

@interface dateView : UIViewController
//<dateViewDelegate, UITextFieldDelegate, UIPickerViewDelegate>

{
    UILabel *eventLabel;
    UITextField *myText;
    UIButton *closeButton;
    NSString *stringValue;
    NSMutableString *eventData;
    NSDate *date;
    UIDatePicker *picker;
    NSString *dateString;
    NSMutableString *allEvents;
    IBOutlet UITextField *eventText;
    IBOutlet UIDatePicker *datePicker;
    IBOutlet UILabel *leftSwipeLabel;
    UISwipeGestureRecognizer *leftSwiper;
    UIModalTransitionStyle *ViewController;
   
}

-(IBAction)closeKeyboard:(id)sender;

-(IBAction)eventText:(id)sender;

-(IBAction)datePicker:(id)sender;

-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer;






@end

