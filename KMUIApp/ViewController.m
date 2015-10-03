//
//  ViewController.m
//  KMUIApp
//
//  Created by fpmi on 28.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *info;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)grow:(id)sender {
    
    AppDelegate *delegate = (AppDelegate*)[[UIApplication sharedApplication]delegate];
    
    [delegate.tree grow];
    [self.info setText:[delegate.tree showInformationAboutTree]];
}

- (IBAction)shake:(id)sender {
    
    AppDelegate* delegate = (AppDelegate*)[[UIApplication sharedApplication]delegate];
    [delegate.tree shake];

    self.info.text = [delegate.tree showInformationAboutTree];
}


@end
