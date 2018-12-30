//
//  Son.m
//  FindJob
//
//  Created by kevin on 2018/12/29.
//  Copyright © 2018 徐诺. All rights reserved.
//

#import "Son.h"

@implementation Son

-(void)whoAreYou
{
    NSLog(@"whoAreYou ::: %@ %@ %@ %@",NSStringFromClass([self class]),NSStringFromClass([super class]),[self me],[super me]);
}


-(NSString*)me{
    return @"son";
}
@end
