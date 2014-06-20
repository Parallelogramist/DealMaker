//
//  ViewController.m
//  DealMaker
//
//  Created by Georgy on 6/17/14.
//  Copyright (c) 2014 Oscicoil. All rights reserved.
//

#import "ViewController.h"
#import "DragonViewController.h"

@interface ViewController ()
@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if([segue.identifier isEqualToString:@"enter"]){
        
        DragonViewController *controller = (DragonViewController *)segue.destinationViewController;
        controller.text = self.textField.text;
    }
    [self.textField resignFirstResponder];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.textField resignFirstResponder];
}

@end
