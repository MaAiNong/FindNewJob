
//
//  NSKVModel.m
//  FindJob
//
//  Created by kevin on 2018/12/30.
//  Copyright © 2018 徐诺. All rights reserved.
//

#import "NSKVModel.h"

@implementation NSKVModel

-(id)init{
    if (self = [super init]) {
        _firstName = @"_firstName";
        _lastName = @"_lastName";
        _manulChange = @"_manulChange";
    }
    return self;
}


-(void)setManulChange:(NSString *)manulChange{
    
    NSLog(@"KVOBSERVE:::BEFORE WILL");
    [self willChangeValueForKey:@"manulChange"];
    NSLog(@"KVOBSERVE:::AFTER WILL");
    
    _manulChange = manulChange;
    
    NSLog(@"KVOBSERVE:::BEFORE DID");
    [self didChangeValueForKey:@"manulChange"];
    NSLog(@"KVOBSERVE:::AFTER DID");
}

//必须重写这个方法 否则监听方会收到两次通知
+(BOOL)automaticallyNotifiesObserversOfManulChange
{
    return NO;
}

@end
