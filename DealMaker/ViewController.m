//
//  ViewController.m
//  DealMaker
//
//  Created by Georgy on 6/17/14.
//  Copyright (c) 2014 Oscicoil. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize text, label;

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
- (IBAction)buttonClick:(id)sender {
    
    self.label.text = self.text.text;
    
    [self.text resignFirstResponder];
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.text resignFirstResponder];
}

@end
