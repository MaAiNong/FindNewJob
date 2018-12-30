//
//  NSSubTestProperty.m
//  FindJob
//
//  Created by kevin on 2018/12/28.
//  Copyright © 2018 徐诺. All rights reserved.
//

#import "NSSubTestProperty.h"

@implementation NSSubTestProperty

-(void)logSubTest
{
    NSLog(@"%@ %@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
}

@end
