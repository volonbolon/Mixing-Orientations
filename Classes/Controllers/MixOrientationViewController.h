#import <UIKit/UIKit.h>

@interface MixOrientationViewController : UIViewController {
    UIButton *goToLandscapeButton; 
}

@property (nonatomic, retain) IBOutlet UIButton *goToLandscapeButton; 

- (IBAction)goToLandscapeButtonTapped; 
- (void)deviceOrientationDidChange:(NSNotification *)notification;

@end

