//
//  UITests.m
//  UITests
//
//  Created by DaiYue’s Macbook on 16/11/22.
//  Copyright © 2016年 Find the Lamp Studio. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface UITests : XCTestCase

@end

@implementation UITests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testSwitchTabs {
    
    XCUIElementQuery *tabBarsQuery = [[XCUIApplication alloc] init].tabBars;
    XCUIElement *moreButton = tabBarsQuery.buttons[@"More"];
    [moreButton tap];
    
    XCUIElement *favoritesButton = tabBarsQuery.buttons[@"Favorites"];
    [favoritesButton tap];
    [moreButton tap];
    [favoritesButton tap];
    [moreButton tap];
}

- (void)testTapButtons {
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    XCUIElement *button1Button = app.buttons[@"Button1"];
    [button1Button tap];
    [button1Button tap];
    [button1Button tap];
    
    XCUIElement *button2Button = app.buttons[@"Button2"];
    [button2Button tap];
    
    XCUIElement *button3Button = app.buttons[@"Button3"];
    [button3Button tap];
    [button2Button tap];
    [button3Button tap];
    [button1Button tap];
    
}



@end
