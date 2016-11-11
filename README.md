[English Version](https://github.com/DaiYue/HAMLogOutputWindow/blob/master/README_en.md)

HAMLogOutputWindow 是一个总是保留在屏幕上方的半透明窗口，可以用于真机测试时输出 log，比如测试自定义统计事件的 log。

![demo](http://ofn9yuqom.bkt.clouddn.com/blog20161111_image1.gif)

写这个小工具的想法，主要来源于很多团队都会用友盟、TalkingData 等第三方框架做自定义事件统计；不过统计代码加好之后，没有很好的方法来让测试工程师验证一下事件加上了没有，调用次数有没有重复等。所以写了这个小工具，代码非常简单，拿去用吧~

# 用法 

## 集成 

只需把 `HAMLogOutputWindow.h`、`HAMLogOutputWindow.m` 两个文件加到工程中。如果您使用友盟或者 TalkingData 做事件统计，也可以加进来 demo 工程中的 `HAMStatisticsManager.h` 和 `HAMStatisticsManager.m`。

## 开启

启用这个 debug 窗口非常简单，只需一行代码：


```
[[HAMLogOutputWindow sharedInstance] setHidden:NO];
```

您可以把这行代码加到 `AppDelegate.m` 里，例如：

```
#define SHOW_STATISTICS_DEBUG 1

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
#if DEBUG && SHOW_STATISTICS_DEBUG
    [[HAMLogOutputWindow sharedInstance] setHidden:NO];
#endif
    
    return YES;
}

```

不需显示 时把 define 的`1`改为`0`即可，也保证了在 release 版本中不会出现。

## 输出和清空 log

输出 log:

```
[HAMLogOutputWindow printLog:@"some log"];
```

输出的 log 会滚动显示在 debug 窗口中，末尾会自动添加换行。最新的 log（0.1s 之内）会显示为黄色，之前的会显示为白色。

如需清空 log，只需调用:

```
[HAMLogOutputWindow clear];
```

# 源码解释

源码非常简单，基本一看就明白啦。[我的博客](http://www.jianshu.com/p/4ebb1f3973bf)上有一篇简要的解释。