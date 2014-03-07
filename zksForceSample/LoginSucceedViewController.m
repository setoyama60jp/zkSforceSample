//
//  LoginSucceedViewController.m
//  zksForceSample
//
//  Created by テラスカイ on 2014/03/07.
//  Copyright (c) 2014年 terrasky, inc. All rights reserved.
//

#import "LoginSucceedViewController.h"

@interface LoginSucceedViewController ()

@end

@implementation LoginSucceedViewController

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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)logoutButtonPushed:(id)sender {
    [self performSegueWithIdentifier:@"logout" sender:self];
}
@end
