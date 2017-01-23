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
        @"Hello, World", 	@"English",         @"",
        @"¡Hola, Mundo!", 	@"Español",         @"Spanish",
        @"Bonjour, le Monde!", 	@"Francais", 	@"French",
        @"Hallo, Wereld!", 	@"Nederlandse",     @"Dutch",
        @"Hallo, Welt!", 	@"Deutsch",         @"German",
        @"Ciao, mondo!", 	@"Italiano",        @"Italian",
        @"Salve, Munde", 	@"Latinae",         @"Latin",
        @"Hej, världen!", 	@"Svenska",         @"Swedish",
        @"Привет мир!", 	@"русский",         @"Russian",
        @"Selam Dünya!", 	@"Türk",            @"Turkish",
        @"你好，世界！",      @"中文",             @"Chinese",
        @"नमस्ते दुनिया!",		@"हिंदी",              @"Hindi",
        @"こんにちは世界！", 	@"日本語",           @"Japanese",
    ];
    helloLabel.hidden = NO;
    mainBtn.hidden = NO;
}

- (IBAction)mainBtn:(id)sender {
    index++;
    if(index >= [helloWorlds count] / 3) index = 0;
    helloLabel.text = helloWorlds[index * 3];
    languageLabel.text = helloWorlds[index * 3 + 1];
    engLabel.text = helloWorlds[index * 3 + 2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
