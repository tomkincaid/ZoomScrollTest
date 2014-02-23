//
//  AppDelegate.m
//  ZoomScrollTest
//
//  Created by Thomas Kincaid on 2/23/14.
//  Copyright (c) 2014 Tom's Apps, LLC. All rights reserved.
//

#import "AppDelegate.h"
#import "ScrollerViewController.h"
#import "ImageViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    /* use this to test image view pinch zoom
    ImageViewController *viewController = [[ImageViewController alloc] init];
    viewController.filename = @"cat.jpg"; */
    
    ScrollerViewController *viewController = [[ScrollerViewController alloc] init];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    self.window.rootViewController = viewController;
 
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
}

- (void)applicationWillTerminate:(UIApplication *)application {
}

@end
