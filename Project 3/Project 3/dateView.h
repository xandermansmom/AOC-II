//
//  dateView.h
//  Project 3
//
//  Created by Michele Laramore on 11/13/13.
//  Copyright (c) 2013 Michele Laramore. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol dateViewDelegate<NSObject>

@required

-(void)didClose:eventData;

@end

@interface dateView : UIViewController <dateViewDelegate, UITextFieldDelegate, UIPickerViewDelegate>
{  
    UIButton *saveThis;
    UIButton *closeButton;
    UILabel *eventLabel;
    NSString *stringValue;
    NSString *eventData;
    NSDate *date;
    IBOutlet UITextField *eventText;
    IBOutlet UIDatePicker *datePicker;
    NSObject<dateViewDelegate> *delegate;
}

-(IBAction)onSave:(id)sender;

-(IBAction)closeKeyboard:(id)sender;

-(IBAction)eventText:(id)sender;

-(IBAction)datePicker:(id)sender;


@property (strong) id<dateViewDelegate> delegate;


@end

