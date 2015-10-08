//
//  NSObject+Model.h
//  02-Model封装
//
//  Created by qianfeng on 15-10-8.
//  Copyright (c) 2015年 肖喆. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Model)

+(id)objectWithKeyValues:(NSDictionary *)dict;
-(id)initWithKeyValues:(NSDictionary *)dict;

@end
