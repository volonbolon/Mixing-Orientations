#import "LandscapeViewController.h"

@implementation LandscapeViewController
@synthesize label; 

- (id)initWithNibName:(NSString *)nibNameOrNil 
               bundle:(NSBundle *)nibBundleOrNil
{
    if ((self = [super initWithNibName:nibNameOrNil
                                bundle:nibBundleOrNil])) {
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(deviceOrientationDidChange:) 
                                                     name:UIDeviceOrientationDidChangeNotification
                                                   object:nil];
    }
    return self;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return UIInterfaceOrientationIsLandscape(interfaceOrientation);
}

- (void)viewDidUnload 
{
    [super viewDidUnload];
    
    self.label = nil; 
}


- (void)dealloc 
{
    self.label = nil; 
    
    [super dealloc];
}

- (void)deviceOrientationDidChange:(NSNotification *)notification
{
    UIDevice *device = [notification object]; 
    
    if ( device.orientation == UIDeviceOrientationPortrait || device.orientation == UIDeviceOrientationPortraitUpsideDown ) {
        [self.parentViewController dismissModalViewControllerAnimated:YES];  
    }
}

@end
