//
//  ViewController.h
//  Practice 8
//
//  Created by Michele Laramore on 11/11/13.
//  Copyright (c) 2013 Michele Laramore. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

{
    IBOutlet UIPickerView *myPickerView;
    NSMutableArray *itemsArray;
    NSInteger row;    
}

-(IBAction)onChange:(id)sender;



@end
