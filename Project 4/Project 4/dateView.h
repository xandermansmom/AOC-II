//
//  dateView.h
//  Project 4
//
//  Created by Michele Laramore on 11/19/13.
//  Copyright (c) 2013 Michele Laramore. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol dateViewDelegate<NSObject>

@required
-(void)didClose:eventData;

@end

@interface dateView : UIViewController
//<dateViewDelegate, UITextFieldDelegate, UIPickerViewDelegate>

{
    UILabel *eventLabel;
    UITextField *myText;
    NSString *stringValue;
    NSMutableString *eventData;
    NSDate *date;
    UIDatePicker *picker;
    NSString *dateString;
    IBOutlet UITextField *eventText;
    IBOutlet UIDatePicker *datePicker;
    IBOutlet UILabel *leftSwipeLabel;
    UISwipeGestureRecognizer *leftSwiper;
    //NSObject<dateViewDelegate> *delegate;
}

//@property (strong) id<dateViewDelegate> delegate;


-(IBAction)closeKeyboard:(id)sender;

-(IBAction)eventText:(id)sender;

-(IBAction)datePicker:(id)sender;




@end

