//
//  dateView.h
//  Project 3
//
//  Created by Michele Laramore on 11/13/13.
//  Copyright (c) 2013 Michele Laramore. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol dateViewDelegate <NSObject>

@required

-(void)DidClose:(NSString*)nameString;

@end

@interface dateView : UIViewController <dateViewDelegate, UITextFieldDelegate, UIPickerViewDelegate>
{  
    UIButton *saveButton;
    UIButton *closeButton;
    UILabel *eventLabel;
    NSString *stringValue;
    IBOutlet UITextField *eventText;
    IBOutlet UIDatePicker *datePicker;
    id<dateViewDelegate> delegate;
}

-(IBAction)onSave:(id)sender;

-(IBAction)closeKeyboard:(id)sender;

-(IBAction)eventText:(id)sender;

-(IBAction)datePicker:(id)sender;

@property (strong) id<dateViewDelegate> delegate;

@end

