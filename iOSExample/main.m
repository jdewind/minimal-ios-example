#import <UIKit/UIKit.h>
#import "iOSExampleAppDelegate.h"

int main(int argc, char *argv[])
{
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
  int retVal = UIApplicationMain(argc, argv, nil, [[iOSExampleAppDelegate class] description]);
  [pool release];
  return retVal;
}
