//
//  WMSChangeTempFormat.m
//  WorksOneStudy
//
//  Created by Naver on 2016. 6. 29..
//  Copyright © 2016년 worksmobile. All rights reserved.
//

#import "WMSChangeTempFormat.h"
#import "WMHViewController.h"

@implementation WMSChangeTempFormat

@synthesize tempFFormatTextField, tempCFormatTextField;

- (void) viewDidLoad {
    [super viewDidLoad];
}

- (void) didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)tempChangeAction:(id)sender {
    //float인지 확인하고.
    float tempF = [tempFFormatTextField.text floatValue];
    tempCFormatTextField.text = [NSString stringWithFormat:@"%.2f", ((tempF - 32) / 1.8)];
}

- (IBAction)backAction:(id)sender {
    //Move to WMHViewController
    WMHViewController *mainScreen = [[WMHViewController alloc] init];
    [self presentViewController:mainScreen animated:YES completion:nil];
}
@end
