//
//  UsernamePrompt.m
//  DealMaker
//
//  Created by Parallelogramist on 6/28/14.
//  Copyright (c) 2014 Oscicoil. All rights reserved.
//

#import "UsernamePrompt.h"
#import "DragonViewController.h"
@interface UsernamePrompt ()

@end

@implementation UsernamePrompt

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if([segue.identifier isEqualToString:@"enter"]){
        
        [[NSUserDefaults standardUserDefaults] setObject:self.textField.text forKey:@"user"];
    }
    [self.textField resignFirstResponder];
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.textField resignFirstResponder];//hide keyboard
}

- (IBAction)keyboardDismiss:(id)sender {
    [ self performSegueWithIdentifier:@"enter"
                               sender:self ];
    [ self.textField resignFirstResponder ];
}
@end
