//
//  LoginViewController.m
//  zksForceSample
//
//  Created by テラスカイ on 2014/03/07.
//  Copyright (c) 2014年 terrasky, inc. All rights reserved.
//

#import "LoginViewController.h"
#import "LoginSucceedViewController.h"
#import "zksforceClient.h"
#import "zkLoginResult.h"

static ZKSforceClient* g_sforce=nil;

@interface LoginViewController ()

@end

@implementation LoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loginButtonPushed:(id)sender {
    
    ZKSforceClient *sforce = [LoginViewController sharedZksforceClient];
    
    ZKLoginResult * result = nil;
          
    //注：サンプル紹介のため、例外処理は実装していません。
    
    if ([self.orgIdTxt.text length] > 0) {
        //組織IDを指定している時、ポータルへのログイン
        result = [sforce portalLogin:self.userIdTxt.text password:self.passwordTxt.text orgId:self.orgIdTxt.text portalId:nil];
    } else {
        //組織IDを指定しなかった時、通常のログイン
        result = [sforce login:self.userIdTxt.text password:self.passwordTxt.text];
        
    }
    
    if ([result sessionId] != nil) {
        //sessionIDが返って来ている場合は、画面遷移
        _sessionId = [result sessionId];
        [self performSegueWithIdentifier:@"loginSucceed" sender:self];
    }
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    //遷移先のViewControllerにsessionIdを渡す
    if ([[segue identifier] isEqualToString:@"loginSucceed"]) {
        LoginSucceedViewController *vc = [segue destinationViewController];
        [vc setSessionId:_sessionId];
    }
}

+ (ZKSforceClient *) sharedZksforceClient {
    if ( g_sforce == nil ) {
        g_sforce = [ZKSforceClient new];
    }
    return g_sforce;
}

@end
