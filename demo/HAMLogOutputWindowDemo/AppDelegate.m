//
//  AppDelegate.m
//  HAMLogOutputWindowDemo
//
//  Created by DaiYue’s Macbook on 16/11/9.
//  Copyright © 2016年 Find the Lamp Studio. All rights reserved.
//

#import "AppDelegate.h"
#import "HAMLogOutputWindow.h"

@interface AppDelegate ()

@end

#define SHOW_STATISTICS_DEBUG 1

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
#if DEBUG && SHOW_STATISTICS_DEBUG
    [[HAMLogOutputWindow sharedInstance] setHidden:NO];
#endif
    
    return YES;
}

@end
