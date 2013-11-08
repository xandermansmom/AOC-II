//
//  ViewController.h
//  Project 2
//
//  Created by Michele Laramore on 11/7/13.
//  Copyright (c) 2013 Michele Laramore. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "movieFactory.h"
#import "baseMovie.h"

@interface ViewController : UIViewController

{
    IBOutlet UIImageView *saharaImage;
    IBOutlet UIImageView *titanicImage;
    IBOutlet UIImageView *avatarImage;
    IBOutlet UIStepper *stepperControl;
    IBOutlet UILabel *colorLabel;
    IBOutlet UIButton *saharaButton;
    IBOutlet UIButton *titanicButton;
    IBOutlet UIButton *avatarButton;
    IBOutlet UITextField *textField;
    IBOutlet UIButton *buttonHandler;
}

-(IBAction)onChange:(id)sender;

-(IBAction)onClick:(id)sender;

-(IBAction)valueChange:(id)sender;

-(IBAction)stepControl:(id)sender;

-(IBAction)buttonHandler:(id)sender;

-(IBAction)performCalculation:(UIButton *)sender;

@end
