//
//  AppDelegate.m
//  Demo Custom Ad
//
//  Created by Savana on 01/03/2015.
//  Copyright (c) 2015 Savana. All rights reserved.
//

#import "AppDelegate.h"
#define Parse_App_Id @""
#define Parse_Client_Key @""
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //! Need to be done here only
    [CustomAd initializeServerWith:Parse_App_Id And:Parse_Client_Key];
    
    // if to display from top
    CustomAd *c=[CustomAd new];
    [c setBannerTopOrigin:@30.0f];// to set y position from top, 20.0 is default
    [c setBannerSize:@80.0f];    // to set Banner size 60.0f is default
    [c displayAdsAt:false];
    // to display from bottom
    [[CustomAd new] displayAdsAt:true];
    
    return YES;
    
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
