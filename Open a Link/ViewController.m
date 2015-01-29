//
//  ViewController.m
//  Open a Link
//
//  Created by Than Tibbetts on 1/29/15.
//  Copyright (c) 2015 Than Tibbetts. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

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

- (IBAction)OpenHoboSupply:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://hobosupply.com/banner-test.html"]];
}

- (IBAction)OpenHoboSupply2:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://hobosupply.com/banner-test-no-viewport.html"]];
}

- (IBAction)OpenWPBF:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://m.wpbf.com/live/25859574"]];
}

@end
