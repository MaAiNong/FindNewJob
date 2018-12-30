//
//  Circle.m
//  FindJob
//
//  Created by kevin on 2018/12/28.
//  Copyright © 2018 徐诺. All rights reserved.
//

#import "Circle.h"
#import "Shape+Vote.h"
#import "NSSubTestProperty.h"

@interface Circle()

@property(atomic,strong)NSSubTestProperty* testProperty;

@end


@implementation Circle
@dynamic testProperty;

-(void)logVoteNumber
{
    self.voteNumber++;
    self.testNumber+=3;
    self.testProperty = [[NSSubTestProperty alloc] init];
    [self.testProperty logSubTest];
    [super logVoteNumber];
}

@end
