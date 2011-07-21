#import <Foundation/Foundation.h>

@interface ApplicationBootstrapper : NSObject {
  UIWindow *_window;
}

@property (nonatomic, retain) UIWindow *window;

- (void)bootstrap;
@end
