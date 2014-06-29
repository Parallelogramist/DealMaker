//
//  UsernamePrompt.h
//  DealMaker
//
//  Created by Parallelogramist on 6/28/14.
//  Copyright (c) 2014 Oscicoil. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UsernamePrompt : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *textField;

- (IBAction)keyboardDismiss:(id)sender;

@end
