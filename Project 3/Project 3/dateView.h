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
    UITextField *myText;
    NSString *stringValue;
    NSMutableString *eventData;
    NSDate *date;
    UIDatePicker *picker;
    IBOutlet UITextField *eventText;
    IBOutlet UIDatePicker *datePicker;
    NSObject<dateViewDelegate> *delegate;
}

@property (strong) id<dateViewDelegate> delegate;

-(IBAction)onSave:(id)sender;

-(IBAction)closeKeyboard:(id)sender;

-(IBAction)eventText:(id)sender;

-(IBAction)datePicker:(id)sender;




@end

