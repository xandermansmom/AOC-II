//
//  ViewController.m
//  Practice 5
//
//  Created by Michele Laramore on 11/4/13.
//  Copyright (c) 2013 Michele Laramore. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onOpen:(id)sender
{
    SecondViewController *viewController = [[SecondViewController alloc]initWithNibName:@"SecondView" bundle: nil];
    if(viewController != nil)
    
    {
        [self presentViewController:viewController animated:true completion:nil];
    }
}
@end
