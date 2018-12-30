//
//  Shape.m
//  FindJob
//
//  Created by kevin on 2018/12/28.
//  Copyright © 2018 徐诺. All rights reserved.
//

#import "Shape.h"
#import "Shape+Vote.h"
@implementation Shape
@synthesize testProperty = _testProperty;
@synthesize testNumber = _testNumber;
-(id)init
{
    if(self = [super init]){
        self.voteNumber = 1;
        _testNumber = 8.6;
    }
    return self;
}

-(void)logVoteNumber
{
    NSLog(@"logVoteNumber:::%@ %@",@(self.voteNumber),@(self.testNumber));
}

@end
