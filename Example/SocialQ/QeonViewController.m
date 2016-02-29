//
//  QeonViewController.m
//  SocialQ
//
//  Created by Qeon on 02/22/2016.
//  Copyright (c) 2016 Qeon. All rights reserved.
//

#import "QeonViewController.h"

@interface QeonViewController (){
    SocialQModel *token;
}

@property (weak, nonatomic) IBOutlet UIButton *popUpBtn;
@property (weak, nonatomic) IBOutlet UITextView *txtToken;
//@property (nonatomic, retain) SocialQPopUp *popUp;

@end

@implementation QeonViewController

- (void)viewDidLoad
{
    
    token = [SocialQModel loadFromSharePreference];
    NSLog(@"Show Token ",token.qeonToken);
    
    _txtToken.text = token.qeonToken;
    
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)showPopupLogin:(UIButton *)sender {
    
    NSBundle* bundle = [NSBundle bundleForClass:[SocialQPopUp class]];
    _popUp = [[SocialQPopUp alloc]initWithNibName:@"SocPopUp" bundle:bundle];
   
    
    [_popUp showInView:self.view animated:YES];
    
}
- (IBAction)showInfo:(UIButton *)sender {
    token = [SocialQModel loadFromSharePreference];
    NSLog(@"Show Token ",token.qeonToken);
    
    _txtToken.text = token.qeonToken;
    
    
}

@end
