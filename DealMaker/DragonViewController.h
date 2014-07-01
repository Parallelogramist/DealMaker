//
//  DragonViewController.h
//  DealMaker
//
//  Created by Georgy on 6/17/14.
//  Copyright (c) 2014 Oscicoil. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DragonViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) NSString *text;

@end