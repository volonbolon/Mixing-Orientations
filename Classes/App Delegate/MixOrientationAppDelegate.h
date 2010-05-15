#import <UIKit/UIKit.h>

@class MixOrientationViewController;

@interface MixOrientationAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MixOrientationViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet MixOrientationViewController *viewController;

@end

