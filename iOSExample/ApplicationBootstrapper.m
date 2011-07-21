#import "ApplicationBootstrapper.h"

@implementation ApplicationBootstrapper
objection_register_singleton(ApplicationBootstrapper)
objection_requires(@"window")

@synthesize window = _window;

- (void)bootstrap {  
  [self.window makeKeyAndVisible];
}

- (void)dealloc {
  [_window release];
	[super dealloc];
}

@end
