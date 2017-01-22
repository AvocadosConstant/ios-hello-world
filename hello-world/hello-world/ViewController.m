//
//  ViewController.m
//  hello-world
//
//  Copyright © 2017 Tim Hung. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)mainBtn:(id)sender {
    mainLabel.text = @"Tim Hung";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    mainLabel.hidden = NO;
    mainBtn.hidden = NO;
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
