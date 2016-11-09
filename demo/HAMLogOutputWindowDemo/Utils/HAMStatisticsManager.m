//
//  HAMStatisticsManager.m
//  HAMLogOutputWindowDemo
//
//  Created by DaiYue’s Macbook on 16/11/9.
//  Copyright © 2016年 Find the Lamp Studio. All rights reserved.
//

#import "HAMStatisticsManager.h"
#import "HAMLogOutputWindow.h"

@implementation HAMStatisticsManager

+ (void)event:(NSString *)name {
#warning todo 在此处添加发送统计事件的代码，如第三方统计工具友盟、talkingData 等自定义事件的统计代码
//    [MobClick event:name];
//    [TalkingData trackEvent:name];
    
    [HAMLogOutputWindow printLog:[NSString stringWithFormat:@"Event : %@", name]];
}

+ (void)event:(NSString *)name label:(NSString *)label {
#warning todo 在此处添加发送统计事件的代码，如第三方统计工具友盟、talkingData 等自定义事件的统计代码
//    [MobClick event:name label:label];
//    [TalkingData trackEvent:name label:label];
    
    [HAMLogOutputWindow printLog:[NSString stringWithFormat:@"Event : %@ , Label : %@", name, label]];
}

+ (void)event:(NSString *)name intLabel:(NSInteger)label {
    NSString* stringLabel = [@(label) stringValue];
    [self event:name label:stringLabel];
}

@end
