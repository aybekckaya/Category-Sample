//
//  ViewController.m
//  CategorySample
//
//  Created by aybek can kaya on 4/2/14.
//  Copyright (c) 2014 aybek can kaya. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString *str = @"Akilli Yazilim";
    
    // string Ak ile baslayip sonrasinda 0-sonsuz arasinda herhangi bir karakterle devam edip sonunda m ile bitiyor mu ?
    BOOL match = [str isMatching:@"Ak(.*?)m"]; // returns YES
    
    
    NSRange rng = [str SearchIn:@"Yaz" CompareOptions:NSCaseInsensitiveSearch];//returns location = 7 , length =3
    
    // static fonksiyon kullanimi
    // 11 harfli rasgele bir string 
    NSString *randomString = [NSString randomStringWithLength:11];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
