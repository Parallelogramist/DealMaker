//
//  DragonViewController.m
//  DealMaker
//
//  Created by Georgy on 6/17/14.
//  Copyright (c) 2014 Oscicoil. All rights reserved.
//

#import "DragonViewController.h"

@interface DragonViewController ()

@end

@implementation DragonViewController{
    NSArray *betTable;
    NSArray *betImages;
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;//another comment
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.label.text = [NSString stringWithFormat:@"Hi, %@!",[[NSUserDefaults standardUserDefaults] stringForKey:@"user"]];//add text from device to label
    
    betTable = [NSArray arrayWithObjects:
                @"Breakfast",
                @"Ice Cream",
                @"Beer",
                @"A Shot",
                @"5 bucks",
                @"Soda",
                nil];
    
    betImages = [ NSArray arrayWithObjects:
                 [UIImage imageNamed:@"breakfast"],
                 [UIImage imageNamed:@"iceCream"],
                 [UIImage imageNamed:@"beer"],
                 [UIImage imageNamed:@"shot"],
                 [UIImage imageNamed:@"dollarBill"],
                 [UIImage imageNamed:@"soda"],
                 nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [betTable count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"betTable";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    /*UIView *selectedView = [[UIView alloc]init];
    selectedView.backgroundColor = [UIColor grayColor];
    cell.selectedBackgroundView =  selectedView;*/
    
    cell.textLabel.text = [betTable objectAtIndex:
                           indexPath.row];
    cell.imageView.image = [betImages objectAtIndex:
                            indexPath.row];

    
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
