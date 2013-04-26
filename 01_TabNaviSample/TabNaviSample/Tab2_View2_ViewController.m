//
//  Tab2_View2_ViewController.m
//  TabNaviSample
//
//  Created by takayuki-a on 2013/04/26.
//  Copyright (c) 2013年 yokoya.lab. All rights reserved.
//

#import "Tab2_View2_ViewController.h"

@interface Tab2_View2_ViewController ()

@end

@implementation Tab2_View2_ViewController

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
- (IBAction)backToView2:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
