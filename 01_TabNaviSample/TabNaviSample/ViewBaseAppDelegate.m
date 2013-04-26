//
//  ViewBaseAppDelegate.m
//  TabNaviSample
//
//  Created by takayuki-a on 2013/04/26.
//  Copyright (c) 2013年 yokoya.lab. All rights reserved.
//

#import "ViewBaseAppDelegate.h"

#import "Tab1_View1_ViewController.h"
#import "Tab2_View1_ViewController.h"

@implementation ViewBaseAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    Tab1_View1_ViewController *_tab1 = [[Tab1_View1_ViewController alloc] initWithNibName:@"Tab1_View1_ViewController" bundle:nil];
    
    Tab2_View1_ViewController *_tab2 = [[Tab2_View1_ViewController alloc] initWithNibName:@"Tab2_View1_ViewController" bundle:nil];
    
    UINavigationController *_navigation1 = [[UINavigationController alloc] initWithRootViewController:_tab1];
    UINavigationController *_navigation2 = [[UINavigationController alloc] initWithRootViewController:_tab2];
    
    UITabBarController *_tabbar = [[UITabBarController alloc] init];
    _tabbar.viewControllers = [NSArray arrayWithObjects:_navigation1, _navigation2, nil];
    [[_tabbar.viewControllers objectAtIndex:0] setTitle:@"First Page"];
    [[_tabbar.viewControllers objectAtIndex:1] setTitle:@"Second Page"];
   
    
    self.window.rootViewController = _tabbar;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
