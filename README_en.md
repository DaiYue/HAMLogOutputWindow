[中文文档](https://github.com/DaiYue/HAMLogOutputWindow/blob/master/README.md)

HAMLogOutputWindow is a transparent debug window that stays on the top of the screen. You can use it to displaying logs on iOS devices, for example logs for analytic events.

![demo](http://ofn9yuqom.bkt.clouddn.com/blog20161111_image1.gif)

I developed this tool because my team uses a third-party analytics framework. It's easy to add a few track events but hard to test whether they are added to the right places and tracked at the right time. So I made this simple little window to display debug logs on iOS devices, you can use it for any logging you need. Enjoy:)

# How to Use

Just add `HAMLogOutputWindow.h`、`HAMLogOutputWindow.m` to your project. If you are planning to use it for logging analytic events, you can take a look at `HAMStatisticsManager.h ` and `HAMStatisticsManager.m ` in the demo project also.

## Start up

To enable this debug window is as simple as the following line:

```
[[HAMLogOutputWindow sharedInstance] setHidden:NO];
```

You can add this code to `AppDelegate.m`, for example:

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

When you don't need this window anymore, just change `SHOW_STATISTICS_DEBUG` to `0` instead of `1`. Also it won't show in release builds.

## Print & Clear logs

To print a log:

```
[HAMLogOutputWindow printLog:@"some log"];
```

It will instantly display in the bottom of the debug window. Every log is printed on a new line by default. The latest logs (less than 0.1s ago) is yellow, while the previous ones are white.

If clearing the debug window is required, just use:

```
[HAMLogOutputWindow clear];
```

and it's clean as new.