#import <Foundation/Foundation.h>

@interface iOSExampleObjectionModule : ObjectionModule {
  UIWindow *_window;
}

- (id)initWithWindow:(UIWindow *)window;
@property (nonatomic, readonly, retain) UIWindow *window;
@end
