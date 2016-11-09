//
//  HAMStatisticsManager.h
//  HAMLogOutputWindowDemo
//
//  Created by DaiYue’s Macbook on 16/11/9.
//  Copyright © 2016年 Find the Lamp Studio. All rights reserved.
//

#import <Foundation/Foundation.h>


/**
 [单例] 用于统计自定义事件的工具类。用法：
 
 不带参数：
 ```
 [HAMStatisticsManager event:@"button_tapped"];
 ```
 
 带参数：
 ```
 [HAMStatisticsManager event:@"button_tapped" label:@"1"];
 ```
 
 */
@interface HAMStatisticsManager : NSObject


/**
 自定义事件

 @param name 事件名
 */
+ (void)event:(NSString*)name;


/**
 自定义事件

 @param name  事件名
 @param label 事件标签，NSString* 类型
 */
+ (void)event:(NSString*)name label:(NSString*)label;


/**
 

 @param name  事件名
 @param label 事件标签，int 类型
 */
+ (void)event:(NSString *)name intLabel:(NSInteger)label;

@end
