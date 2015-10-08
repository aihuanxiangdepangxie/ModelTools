//
//  Address.h
//  02-Model封装
//
//  Created by qianfeng on 15-10-8.
//  Copyright (c) 2015年 肖喆. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Address : NSObject

@property(nonatomic,copy) NSString * city;

@property(nonatomic,copy) NSString * cityNumber;

//+(id)addressWithDict:(NSDictionary *)dict;
//
//-(id)initWithDict:(NSDictionary *)dict;

@end
