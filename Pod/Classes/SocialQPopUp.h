//
//  SocialQPopUp.h
//  Pods
//
//  Created by dwijayantoyn on 2/22/16.
//
//

#import <UIKit/UIKit.h>

@interface SocialQPopUp : UIViewController
//@property (weak,  readonly,nonatomic) IBOutlet UIView *popUpView;
@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *logoImg;
@property (unsafe_unretained, nonatomic) IBOutlet UILabel *messageLabel;
@property (weak, nonatomic) IBOutlet UIButton *btnClose;

- (void)showInView:(UIView *)aView withtext: (NSString *)withtext animated:(BOOL *)animated;
- (IBAction)popClose:(id)sender;
@end
