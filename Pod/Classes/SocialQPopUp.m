//
//  SocialQPopUp.m
//  Pods
//
//  Created by dwijayantoyn on 2/22/16.
//
//

#import "SocialQPopUp.h"

@interface SocialQPopUp ()
@property (strong,  readwrite, nonatomic) IBOutlet UIView *popUpView;
@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *logoImg;
@property (unsafe_unretained, nonatomic) IBOutlet UILabel *messageLabel;

@end

@implementation SocialQPopUp

- (void)viewDidLoad {
    self.view.backgroundColor=[[UIColor blackColor] colorWithAlphaComponent:.6];
    self.popUpView.layer.cornerRadius = 5;
    self.popUpView.layer.shadowOpacity = 0.8;
    self.popUpView.layer.shadowOffset = CGSizeMake(0.0f, 0.0f);
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)showInView:(UIView *)aView withtext:(NSString *)withtext animated:(BOOL)animated
{
    [aView addSubview:self.view];
    //_logoImg.image = image;
    _messageLabel.text = withtext;
    if (animated) {
        [self showAnimate];
    }
}

- (IBAction)closePopup:(id)sender {
    [self removeAnimate];
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
