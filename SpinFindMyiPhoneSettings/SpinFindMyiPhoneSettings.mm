#import <Preferences/Preferences.h>
#import <UIKit/UIKit.h>

@interface SpinFindMyiPhoneSettingsListController: PSListController {
}
@end

@interface ViewController : UIViewController <UIImagePickerControllerDelegate,UINavigationControllerDelegate>
@end

@implementation SpinFindMyiPhoneSettingsListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"SpinFindMyiPhoneSettings" target:self] retain];
	}
	return _specifiers;

}

-(void)Mytwitter {

	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://mobile.twitter.com/me_salman148"]];

}

-(void)save
{
    [self.view endEditing:YES];
}

@end

