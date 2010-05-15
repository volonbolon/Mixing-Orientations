#import "MixOrientationAppDelegate.h"
#import "MixOrientationViewController.h"

@implementation MixOrientationAppDelegate

@synthesize window;
@synthesize viewController;


- (BOOL)application:(UIApplication *)application 
didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{    
    [self.window addSubview:self.viewController.view]; 
    [self.window makeKeyAndVisible]; 
    
    return YES; 
}

- (void)dealloc
{
    [viewController release];
    [window release];
    [super dealloc];
}


@end
