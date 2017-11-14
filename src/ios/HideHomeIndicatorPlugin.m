#import "HideHomeIndicatorPlugin.h"

@implementation HideHomeIndicatorPlugin

- (void) pluginInitialize
{
    NSLog(@"Plugin initialized, hiding home indicator by default");
}

@end

@interface CDVViewController (HideHomeIndicator)
- (BOOL)prefersHomeIndicatorAutoHidden;
@end

@implementation CDVViewController (HideHomeIndicator)
- (BOOL) prefersHomeIndicatorAutoHidden {
        return YES;
}
@end
