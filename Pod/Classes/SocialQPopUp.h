//
//  SocialQPopUp.h
//  Pods
//
//  Created by dwijayantoyn on 2/22/16.
//
//

#import <UIKit/UIKit.h>

@interface SocialQPopUp : UIViewController
@property (weak,  readonly,nonatomic) IBOutlet UIView *popUpView;

- (void)showInView:(UIView *)aView withtext: (NSString *)withtext animated:(BOOL)animated;

@end
