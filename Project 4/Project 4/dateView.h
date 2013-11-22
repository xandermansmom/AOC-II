//
//  dateView.h
//  Project 4
//
//  Created by Michele Laramore on 11/19/13.
//  Copyright (c) 2013 Michele Laramore. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "dataStorage.h"

@protocol dateViewDelegate<NSObject>

@end

@interface dateView : UIViewController

{
    dataStorage *GetInstance;
    UILabel *eventLabel;
    UITextField *myText;
    UIButton *closeButton;
    NSDate *date;
    NSString *stringValue;
    NSString *dateString;
    UIDatePicker *picker;
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

