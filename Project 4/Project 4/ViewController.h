//
//  ViewController.h
//  Project 4
//
//  Created by Michele Laramore on 11/19/13.
//  Copyright (c) 2013 Michele Laramore. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "dataStorage.h"


@interface ViewController : UIViewController 
//<dateViewDelegate, UITextViewDelegate>

{
    dataStorage *GetInstance;
    UITextView *dateText;
    UIButton *saveButton;
    NSString *stringValue;
    UITextField *myText;
    NSDate *date;
    NSString *dateString;
    NSString *formattedEvent;
    NSMutableString *allEvents;
    IBOutlet UITextView *textView;
    IBOutlet UILabel *swipeLabel;
    UISwipeGestureRecognizer *rightSwiper;
    UIModalTransitionStyle *dateView;
}


-(IBAction)onSave:(id)sender;

-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer;



@end
