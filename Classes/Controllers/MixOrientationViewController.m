#import "MixOrientationViewController.h"
#import "LandscapeViewController.h"

@interface MixOrientationViewController ()

- (void)presentLandscapeViewControllerAsModal; 

@end


@implementation MixOrientationViewController
@synthesize goToLandscapeButton; 

- (void)viewDidLoad 
{
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(deviceOrientationDidChange:) 
                                                 name:UIDeviceOrientationDidChangeNotification
                                               object:nil];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation 
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)viewDidUnload 
{
    self.goToLandscapeButton = nil; 
}

- (void)dealloc
{
    self.goToLandscapeButton = nil; 
    
    [super dealloc];
}

#pragma mark -
#pragma mark IBAction 
- (IBAction)goToLandscapeButtonTapped
{
    [self presentLandscapeViewControllerAsModal]; 
}

- (void)deviceOrientationDidChange:(NSNotification *)notification
{
    UIDevice *device = [notification object]; 
    
    if ( device.orientation == UIDeviceOrientationLandscapeLeft || device.orientation == UIDeviceOrientationLandscapeRight ) {
        [self presentLandscapeViewControllerAsModal]; 
    }
}

- (void)presentLandscapeViewControllerAsModal
{
    LandscapeViewController *lvc = [[LandscapeViewController alloc] initWithNibName:@"LandscapeViewController" bundle:nil]; 
    lvc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve; 
    [self presentModalViewController:lvc animated:YES]; 
    [lvc release]; 
}

@end