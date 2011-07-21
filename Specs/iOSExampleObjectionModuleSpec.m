#import "SpecHelper.h"
#import "iOSExampleObjectionModule.h"

SPEC_BEGIN(iOSExampleObjectionModuleSpec)

describe(@"iOSExampleObjectionModule", ^{
  __block iOSExampleObjectionModule *target = nil;
  __block UIWindow *window = nil;
  
  beforeAll(^{
    window = [[[UIWindow alloc] init] autorelease];
    target = [[[iOSExampleObjectionModule alloc] initWithWindow:window] autorelease];
    [target configure];
  });
  
  it(@"configures custom bindings", ^{
    NSDictionary *bindings = target.bindings;
    
    [[theValue(bindings.count) should] equal:theValue(1)];
    
    [[[[bindings objectForKey:@"UIWindow"] extractObject] should] equal:window];
  });
});

SPEC_END