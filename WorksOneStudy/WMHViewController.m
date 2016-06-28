//
//  ViewController.m
//  WorksOneStudy
//
//  Created by Naver on 2016. 6. 28..
//  Copyright © 2016년 worksmobile. All rights reserved.
//

#import "WMHViewController.h"

@interface WMHViewController ()

@end

@implementation WMHViewController

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
}

- (void)setUpConstraints {
    NSDictionary *views = @{@"tableViewButton" : self.tableViewButton};
    
    [self.view addConstraint:
     [NSLayoutConstraint constraintWithItem:self.view attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.tableViewButton attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];
    
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:[tableViewButton(==200)]" options:0 metrics:nil views:views]];
    
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-100-[tableViewButton(==50)]" options:0 metrics:nil views:views]];

}

- (void)tableViewButtonClicked:(UIButton *)sender {
    NSLog(@"table view button clicked!");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
