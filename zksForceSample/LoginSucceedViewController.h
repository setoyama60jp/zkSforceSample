//
//  LoginSucceedViewController.h
//  zksForceSample
//
//  Created by テラスカイ on 2014/03/07.
//  Copyright (c) 2014年 terrasky, inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginSucceedViewController : UIViewController{
    NSString * _sessionId;
}

@property (weak, nonatomic) IBOutlet UITextView *sessionIdView;

- (IBAction)logoutButtonPushed:(id)sender;

- (void) setSessionId:(NSString *) sessionId;

@end
