#import <UIKit/UIKit.h>
#import "ApplicationBootstrapper.h"

@interface iOSExampleAppDelegate : NSObject <UIApplicationDelegate> {
  ApplicationBootstrapper *_applicationBootstrapper;
}

@property (nonatomic, retain) UIWindow *window;
@property (nonatomic, retain) ApplicationBootstrapper *applicationBootstrapper;

@end
