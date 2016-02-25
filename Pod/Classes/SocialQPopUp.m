//
//  SocialQPopUp.m
//  Pods
//
//  Created by dwijayantoyn on 2/22/16.
//
//

#import "SocialQPopUp.h"

@interface SocialQPopUp ()


@end
FBSDKAccessToken  *restrict tokenGet;
FBSDKLoginManager *loginMgr;

@implementation SocialQPopUp


//- (id)initWithNibName:(NSString *)nibName bundle:(NSBundle *)bundle
//{
//    NSAssert(NO, @"Initialize with -init");
//    return nil;
//}

-(id)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if (self) {
        
    }
    
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    //[FBSDKSettings setAppURLSchemeSuffix:@"fbauth2"];
    //[FBSDKSettings setAppURLSchemeSuffix:@"fb"];
    [FBSDKSettings setAppID:@"1694860590803720"];
    [FBSDKSettings setDisplayName:@"qmactest"];
    
    tokenGet = [FBSDKAccessToken currentAccessToken];
    if (tokenGet.tokenString != nil) {
        [_btnFb setTitle:@"Log Out" forState:UIControlStateNormal];
        _messageLabel.text = tokenGet.tokenString;
        NSLog(tokenGet.tokenString);
    }
    else{
        [_btnFb setTitle:@"Log In" forState:UIControlStateNormal];
        _messageLabel.text = @"Login dulu broh!";
    }

    
    self.view.backgroundColor=[[UIColor blackColor] colorWithAlphaComponent:.7];
    self.view.layer.cornerRadius = 5;
    self.view.layer.shadowOpacity = 0.5;
    self.view.layer.shadowOffset = CGSizeMake(0.0f, 0.0f);
    //[self popClose:self];
     [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)popClose:(id)sender {
    NSLog(@"Button Pressed");
    [self removeAnimate];
}

- (IBAction)btnLogFb:(id)sender {
     NSLog(@"Login FB");
    
    if (tokenGet != NULL) {
        [loginMgr logOut];
        [FBSDKAccessToken setCurrentAccessToken:nil];
        tokenGet = NULL;
        [_btnFb setTitle:@"Log In" forState:UIControlStateNormal];
        _messageLabel.text = @"Login dulu broh!";
    } else {
        
        
        loginMgr = [[FBSDKLoginManager alloc] init];
        loginMgr.loginBehavior=FBSDKLoginBehaviorWeb;
        [loginMgr
         logInWithReadPermissions: @[@"public_profile"]
         fromViewController:self
         handler:^(FBSDKLoginManagerLoginResult *result, NSError *error) {
             if (error) {
                 NSLog(@"Process error");
             } else if (result.isCancelled) {
                 NSLog(@"Cancelled");
             } else {
                 tokenGet = result.token;
                 _messageLabel.text = tokenGet.tokenString;
                 NSLog(@"Logged in");
             }
         }];

    }
   
    }


-(void) qeonFBDelegate:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [[FBSDKApplicationDelegate sharedInstance] application:application
                             didFinishLaunchingWithOptions:launchOptions];
    
}

- (void)showInView:(UIView *)aView animated:(BOOL *)animated
{   NSLog(@"Show Pop Up");
    [aView addSubview:self.view];
    //_logoImg.image = image;
    //_popUpView = aView;
//    [_btnClose addTarget:self action:@selector(popClose:) forControlEvents:UIControlEventTouchUpInside];
    if (animated) {
        [self showAnimate];
    }
}





- (void)showAnimate
{
    self.view.transform = CGAffineTransformMakeScale(1.3, 1.3);
    self.view.alpha = 0;
    [UIView animateWithDuration:.25 animations:^{
        self.view.alpha = 1;
        self.view.transform = CGAffineTransformMakeScale(1, 1);
    }];
}

- (void)removeAnimate
{
    [UIView animateWithDuration:.25 animations:^{
        self.view.transform = CGAffineTransformMakeScale(1.3, 1.3);
        self.view.alpha = 0.0;
    } completion:^(BOOL finished) {
        if (finished) {
            [self.view removeFromSuperview];
        }
    }];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
