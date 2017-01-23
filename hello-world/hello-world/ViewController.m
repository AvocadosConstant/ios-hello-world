//
//  ViewController.m
//  hello-world
//
//  Copyright © 2017 Tim Hung. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    NSArray *helloWorlds;
    int index;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    // Do any additional setup after loading the view, typically from a nib.
    [super viewDidLoad];
    
    index = 0;

    helloWorlds = @[
        @"Hello, World", 	@"English",         @"",        @"uk.png",
        @"¡Hola, Mundo!", 	@"Español",         @"Spanish", @"spain.jpg",
        @"こんにちは世界！", 	@"日本語",           @"Japanese",  @"japan.png",
        @"Привет мир!", 	@"русский",         @"Russian", @"russia.png",
        @"Hallo, Welt!", 	@"Deutsch",         @"German",  @"germany.png",
        @"你好，世界！",      @"中文",             @"Mandarin Chinese",  @"taiwan.png",
        @"Salve, Munde", 	@"Latinae",         @"Latin",   @"rome.png",
        @"Hej, världen!", 	@"Svenska",         @"Swedish", @"sweden.png",
        @"Selam Dünya!", 	@"Türk",            @"Turkish", @"turkey.png",
        @"Ciao, mondo!", 	@"Italiano",        @"Italian", @"italy.png",
        @"Bonjour, le Monde!", 	@"Francais", 	@"French",  @"france.png",
        @"नमस्ते दुनिया!",		@"हिंदी",              @"Hindi",    @"india.png",
        @"Hallo, Wereld!", 	@"Nederlandse",     @"Dutch",   @"netherlands",
    ];
    helloLabel.hidden = NO;
    mainBtn.hidden = NO;
}

- (IBAction)mainBtn:(id)sender {
    index++;
    int cols = 4;
    if(index >= [helloWorlds count] / cols) index = 0;
    helloLabel.text = helloWorlds[index * cols];
    languageLabel.text = helloWorlds[index * cols + 1];
    engLabel.text = helloWorlds[index * cols + 2];

    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed: helloWorlds[index * cols + 3]] drawInRect:self.view.bounds];
    UIImage *flagImg = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    flagView.image = flagImg;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
