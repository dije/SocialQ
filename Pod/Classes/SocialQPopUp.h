//
//  SocialQPopUp.h
//  Pods
//
//  Created by dwijayantoyn on 2/22/16.
//
//

#import <UIKit/UIKit.h>
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>
#import <FBSDKCoreKit/FBSDKAccessToken.h>

@interface SocialQPopUp : UIViewController
//@property (weak,  readonly,nonatomic) IBOutlet UIView *popUpView;
@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *logoImg;
@property (unsafe_unretained, nonatomic) IBOutlet UILabel *messageLabel;
@property (weak, nonatomic) IBOutlet UIButton *btnClose;
@property (weak, nonatomic) IBOutlet UIButton *btnFb;

-(void) qeonFBDelegate:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;
- (void)showInView:(UIView *)aView animated:(BOOL *)animated;
- (IBAction)popClose:(id)sender;
@end

