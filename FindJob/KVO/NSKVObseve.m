//
//  NSKVObseve.m
//  FindJob
//
//  Created by kevin on 2018/12/30.
//  Copyright © 2018 徐诺. All rights reserved.
//

#import "NSKVObseve.h"
#import "NSKVModel.h"
void* NSKVModel_FIRST_NAME = &NSKVModel_FIRST_NAME;
void* NSKVModel_MANUAL_CHANGE = &NSKVModel_MANUAL_CHANGE;

@implementation NSKVObseve
{
    NSKVModel* _model;
}

-(void)dealloc
{
    [_model removeObserver:self forKeyPath:@"firstName" context:NSKVModel_FIRST_NAME];
    [_model removeObserver:self forKeyPath:@"manulChange" context:NSKVModel_MANUAL_CHANGE];
}

-(id)init{
    
    if (self = [super init]) {
        _model = [[NSKVModel alloc] init];

//提前remove是不行的
//        *** Terminating app due to uncaught exception 'NSRangeException', reason: 'Cannot remove an observer <NSKVObseve 0x600000001400> for the key path "firstName" from <NSKVModel 0x60000002d4e0> because it is not registered as an observer.'
//        [_model removeObserver:self forKeyPath:@"firstName" context:NSKVModel_FIRST_NAME];
//        [_model removeObserver:self forKeyPath:@"manulChange" context:NSKVModel_MANUAL_CHANGE];
        
        [_model addObserver:self forKeyPath:@"firstName" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld|NSKeyValueObservingOptionInitial|NSKeyValueObservingOptionPrior context:NSKVModel_FIRST_NAME];
        
        [_model addObserver:self forKeyPath:@"manulChange" options:NSKeyValueObservingOptionNew context:NSKVModel_MANUAL_CHANGE];
//        两次add会收到两次监听
//        [_model addObserver:self forKeyPath:@"manulChange" options:NSKeyValueObservingOptionNew context:NSKVModel_MANUAL_CHANGE];
        
    }
    return self;
}

-(void)fire
{
    _model.firstName = @"sb";
    _model.lastName = @"dazhi";
    _model.manulChange = @"KVmanulChange";
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    
    if (NSKVModel_FIRST_NAME == context) {
        
        NSLog(@"KVOBSERVE:::%@ %@",keyPath,change);
        
    }else if (NSKVModel_MANUAL_CHANGE == context){
        
        NSLog(@"KVOBSERVE:::%@ %@",keyPath,change);
        
    }else if ([super respondsToSelector:@selector(observeValueForKeyPath:ofObject:change:context:)]) {
        
        NSLog(@"KVOBSERVE SUPER:::%@ %@",keyPath,change);
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }else{
        NSLog(@"KVOBSERVE END:::%@ %@",keyPath,change);
    }
    
}

@end
