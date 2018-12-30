//
//  ShapeProtocol.h
//  FindJob
//
//  Created by kevin on 2018/12/28.
//  Copyright © 2018 徐诺. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSTestProperty.h"
@protocol ShapeProtocol <NSObject>

@property(assign,atomic)int testNumber;
@property(atomic,strong)NSTestProperty* testProperty;

@end
