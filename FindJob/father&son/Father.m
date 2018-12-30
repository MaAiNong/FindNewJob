


//
//  Father.m
//  FindJob
//
//  Created by kevin on 2018/12/29.
//  Copyright © 2018 徐诺. All rights reserved.
//

#import "Father.h"
#import "ViewController.h"
@implementation Father

-(NSString*)me{
    return @"father";
}

- (Class)class
{
    ViewController* vc = [[ViewController alloc] init];
    return [vc class];
}

@end
