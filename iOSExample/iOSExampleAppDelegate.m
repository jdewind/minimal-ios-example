#import "iOSExampleAppDelegate.h"
#import "iOSExampleObjectionModule.h"

@implementation iOSExampleAppDelegate

@synthesize window=_window;
@synthesize applicationBootstrapper = _applicationBootstrapper;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  CGSize size = [[UIScreen mainScreen] bounds].size;
  self.window = [[[UIWindow alloc] initWithFrame:CGRectMake(0, 0, size.width, size.height)] autorelease];
  
  ObjectionInjector *injector = [Objection createInjector:[[[iOSExampleObjectionModule alloc] initWithWindow:self.window] autorelease]];
  [Objection setGlobalInjector:injector];
  
  self.applicationBootstrapper = [[Objection globalInjector] getObject:[ApplicationBootstrapper class]];
  [self.applicationBootstrapper bootstrap];
  
  return YES;
}

- (void)dealloc {
  [_applicationBootstrapper release];
  [_window release];
  [super dealloc];
}

@end
