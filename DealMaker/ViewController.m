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
    
    if (![@"1" isEqualToString:
          [[NSUserDefaults standardUserDefaults] objectForKey:@"loaded"]])
    {
        [[NSUserDefaults standardUserDefaults] setValue:@"1"
                                             forKey:@"loaded"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        
        [self performSelector:@selector(loadAuthenticateViewController)
                   withObject:nil
                   afterDelay:0.0];
    }
}

-(void)loadAuthenticateViewController
{
    [ self performSegueWithIdentifier:@"usernamePrompt" sender:self ];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
