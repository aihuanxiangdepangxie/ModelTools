//
//  Person.m
//  01-runtime基础
//
//  Created by qianfeng on 15-10-8.
//  Copyright (c) 2015年 肖喆. All rights reserved.
//

#import "Person.h"


@implementation Person

+ (id)personWithDict:(NSDictionary *)dict
{
    return [[self alloc] initWithDict:dict];
}
- (id)initWithDict:(NSDictionary *)dict
{
    if (self = [super init])
    {
        [self setValuesForKeysWithDictionary:dict];
        
        //特殊处理
//        self.address =[Address addressWithDict:self.address];
        
        NSLog(@"address %@",[self.address class]);
        
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"name = %@,age = %d marray %d address = %@", _name,_age,_marry,_address];
}


@end
