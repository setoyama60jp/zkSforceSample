//
//  LoginViewController.h
//  zksForceSample
//
//  Created by テラスカイ on 2014/03/07.
//  Copyright (c) 2014年 terrasky, inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZksforceClient.h"

@interface LoginViewController : UIViewController
{
    NSString * _sessionId;
}
@property (weak, nonatomic) IBOutlet UITextField *userIdTxt;
@property (weak, nonatomic) IBOutlet UITextField *passwordTxt;
@property (weak, nonatomic) IBOutlet UITextField *orgIdTxt;

- (IBAction)loginButtonPushed:(id)sender;

+ (ZKSforceClient * ) sharedZksforceClient;

@end
