#import "ClassThatImplementsRCTBridgeDelegate.h"
#import <React/RCTBridge.h>
#import <React/RCTBundleURLProvider.h>

@implementation ClassThatImplementsRCTBridgeDelegate
- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge
{
#if DEBUG
  return [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index" fallbackResource:nil];
#else
  return [[NSBundle mainBundle] URLForResource:@"main" withExtension:@"jsbundle"];
#endif
}
@end
