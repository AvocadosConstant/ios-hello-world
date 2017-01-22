//
//  ViewController.h
//  hello-world
//
//  Copyright © 2017 Tim Hung. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    IBOutlet UILabel *mainLabel;
    IBOutlet UIButton *mainBtn;
}

- (IBAction)mainBtn:(id)sender;

//@property (strong, nonatomic) UILabel *mainLabel;

@end

