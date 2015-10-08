//
//  Person.h
//  01-runtime基础
//
//  Created by qianfeng on 15-10-8.
//  Copyright (c) 2015年 肖喆. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+Model.h"

#import "Address.h"

@interface Person : NSObject

@property(nonatomic,copy) NSString * name;

@property(nonatomic,assign)int age;

@property(nonatomic,assign)BOOL marry;

@property(nonatomic,assign)int abc;

@property(nonatomic,strong)Address * address;

//+ (id)personWithDict:(NSDictionary *)dict;
//- (id)initWithDict:(NSDictionary *)dict;

@end
