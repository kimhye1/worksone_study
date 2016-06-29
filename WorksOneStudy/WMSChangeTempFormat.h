//
//  WMSChangeTempFormat.h
//  WorksOneStudy
//
//  Created by Naver on 2016. 6. 29..
//  Copyright © 2016년 worksmobile. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WMSChangeTempFormat : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *tempFFormatTextField;
@property (strong, nonatomic) IBOutlet UITextField *tempCFormatTextField;

- (IBAction)tempChangeAction:(id)sender;
- (IBAction)backAction:(id)sender;

@end
