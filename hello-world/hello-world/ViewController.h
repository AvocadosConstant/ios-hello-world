//
//  ViewController.h
//  hello-world
//
//  Copyright © 2017 Tim Hung. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    IBOutlet UILabel *helloLabel;
    IBOutlet UILabel *languageLabel;
    IBOutlet UILabel *engLabel;
    IBOutlet UIButton *mainBtn;
    IBOutlet UIImageView *flagView;
}

- (IBAction)mainBtn:(id)sender;

//@property (strong, nonatomic) UILabel *mainLabel;

@end

