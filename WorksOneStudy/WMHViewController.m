//
//  ViewController.m
//  WorksOneStudy
//
//  Created by Naver on 2016. 6. 28..
//  Copyright © 2016년 worksmobile. All rights reserved.
//

#import "WMHViewController.h"
#import "WMSChangeTempFormat.h"

@interface WMHViewController ()

@end

@implementation WMHViewController

@synthesize tableViewButton2;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUpComponents];
    [self setUpConstraints];
}

- (void)setUpComponents {
    self.tableViewButton = [[UIButton alloc] init];
    [self.tableViewButton setTitle:@"tableView" forState:UIControlStateNormal];
    self.tableViewButton.backgroundColor = [UIColor redColor];
    self.tableViewButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:self.tableViewButton];
    [self.tableViewButton addTarget:self action:@selector(tableViewButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    
    //Init tableViewButton2
    tableViewButton2 = [[UIButton alloc] init];
    [tableViewButton2 setTitle:@"SH01" forState:UIControlStateNormal];
    tableViewButton2.backgroundColor = [UIColor blueColor];
    tableViewButton2.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:tableViewButton2];
    [tableViewButton2 addTarget:self action:@selector(tableViewButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)setUpConstraints {
    NSDictionary *views = @{@"tableViewButton" : self.tableViewButton, @"tableViewButton2" : tableViewButton2};
    
    [self.view addConstraint:
     [NSLayoutConstraint constraintWithItem:self.view attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.tableViewButton attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];
    
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:[tableViewButton(==200)]" options:0 metrics:nil views:views]];
    
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-100-[tableViewButton(==50)]" options:0 metrics:nil views:views]];

    
    //Add tableViewButton2's constraint
    [self.view addConstraint:
     [NSLayoutConstraint constraintWithItem:self.view attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:tableViewButton2 attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];
    
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:[tableViewButton2(==200)]" options:0 metrics:nil views:views]];
    
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-150-[tableViewButton2(==50)]" options:0 metrics:nil views:views]];
}

- (void)tableViewButtonClicked:(UIButton *)sender {
    NSLog(@"table view button clicked!");
    
    NSString *buttonTitle = [NSString stringWithString:sender.currentTitle];
    if ([buttonTitle isEqualToString:@"SH01"]) {
        //Move to SH_01_changeTemperatureFormat/WMSChangeTemperatureFormat
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        WMSChangeTempFormat *changeTempFormatScreen = [storyboard instantiateViewControllerWithIdentifier:@"WMSChangeTempFormat"];
        [self presentViewController:changeTempFormatScreen animated:YES completion:nil];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
