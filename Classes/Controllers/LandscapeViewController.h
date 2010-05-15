#import <UIKit/UIKit.h>


@interface LandscapeViewController : UIViewController {
    UILabel *label; 
}

@property (nonatomic, retain) IBOutlet UILabel *label; 

- (void)deviceOrientationDidChange:(NSNotification *)notification; 

@end
