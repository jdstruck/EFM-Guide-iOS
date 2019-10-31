//
//  ViewController.m
//  PreOpEval2
//
//  Created by Ashley Kang on 7/29/14.
//  Copyright (c) 2014 kangh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIAlertView *theAlert = [[UIAlertView alloc] initWithTitle:@"This app is a guide to terms, approach, and management of electronic fetal monitoring (EFM) according to guidelines from the National Institute of Child Health and Human Development (NICHD) in 2008 and the American College of Obstetricians and Gynecologists (ACOG) in 2009 and 2010."  // got rid of "readme" which filled the quotes, moved message into title
                                                       message:@""
                                                      delegate:self
                                             cancelButtonTitle:@"Get Started"
                                             otherButtonTitles:nil];
    
    [theAlert show];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
