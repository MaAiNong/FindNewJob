//
//  Shape.h
//  FindJob
//
//  Created by kevin on 2018/12/28.
//  Copyright © 2018 徐诺. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ShapeProtocol.h"
@interface Shape : NSObject<ShapeProtocol>

@property(assign,readonly)int voteNumber;

@property(assign,atomic)int number;

-(void)logVoteNumber;

@end
