//
//  ViewController.h
//  Project 3
//
//  Created by Michele Laramore on 11/13/13.
//  Copyright (c) 2013 Michele Laramore. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "dateView.h"

@interface ViewController : UIViewController
 <dateViewDelegate, UITextViewDelegate>

{
    UITextView *dateText;
    UILabel *dateLabel;
    UIButton *eventButton;
    UIButton *dateViewButton;
    NSString *stringValue;
    NSDate *date;
    NSMutableString *eventData;
    IBOutlet UITextView *textView;
}

-(IBAction)onClick:(id)sender;

-(void)didClose:(NSString*)myText date:(NSString*)dateString;

@end
