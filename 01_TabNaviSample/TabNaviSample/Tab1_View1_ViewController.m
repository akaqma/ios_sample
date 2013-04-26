//
//  ViewBaseViewController.m
//  TabNaviSample
//
//  Created by takayuki-a on 2013/04/26.
//  Copyright (c) 2013年 yokoya.lab. All rights reserved.
//

#import "Tab1_View1_ViewController.h"
#import "Tab1_View2_ViewController.h"

@interface Tab1_View1_ViewController ()

@end

@implementation Tab1_View1_ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)pushView2:(id)sender
{
    Tab1_View2_ViewController *_cnt = [[Tab1_View2_ViewController alloc] initWithNibName:@"Tab1_View2_ViewController" bundle:nil];
    [self.navigationController pushViewController:_cnt animated:YES];
}



@end
