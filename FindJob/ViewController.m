//
//  ViewController.m
//  FindJob
//
//  Created by kevin on 2018/12/26.
//  Copyright © 2018 徐诺. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate+ex_count.h"
#import "Circle.h"
#import "Son.h"
#import "NSKVObseve.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ((AppDelegate*)[UIApplication sharedApplication].delegate).ex_count = 10;
    [(AppDelegate*)[UIApplication sharedApplication].delegate logEXCount];
    
    [(AppDelegate*)[UIApplication sharedApplication].delegate whatAreYouDoing];
    
    //KVO
    NSKVObseve* observe = [[NSKVObseve alloc] init];
    [observe fire];
    observe = nil;
    
    //Extension -------------------------------
    Circle* circle = [[Circle alloc] init];
    [circle logVoteNumber];
    
    //Father and son -------------------------------
    Son *son = [[Son alloc] init];
    [son whoAreYou];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
