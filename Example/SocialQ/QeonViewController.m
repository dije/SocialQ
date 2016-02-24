//
//  QeonViewController.m
//  SocialQ
//
//  Created by Qeon on 02/22/2016.
//  Copyright (c) 2016 Qeon. All rights reserved.
//

#import "QeonViewController.h"

@interface QeonViewController ()
@property (weak, nonatomic) IBOutlet UIButton *popUpBtn;
//@property (nonatomic, retain) SocialQPopUp *popUp;

@end

@implementation QeonViewController

- (void)viewDidLoad
{
   
    
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
   
    
    [_popUp showInView:self.view withtext:@"Test" animated:YES];
}

@end
