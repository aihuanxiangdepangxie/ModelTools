//
//  NSObject+Model.m
//  02-Model封装
//
//  Created by qianfeng on 15-10-8.
//  Copyright (c) 2015年 肖喆. All rights reserved.
//

#import "NSObject+Model.h"
#import <objc/runtime.h>
#import "Address.h"

@implementation NSObject (Model)

+(id)objectWithKeyValues:(NSDictionary *)dict
{
    return [[self alloc] initWithKeyValues:dict];
}
-(id)initWithKeyValues:(NSDictionary *)dict
{
    if (self = [self init])
    {
        
//        [self setValuesForKeysWithDictionary:dict];
        
//        for(int i = 0; i < dict.allKeys.count;i++)
//        {
//            NSString * key = dict.allKeys[i];
        
            id value;
        
            //取出当前类相关的类文件Class
            Class clazz = [self class];//Address
            //根据类文件描述,找到当前类中,特殊的那个属性类型,比如说Adress
            unsigned int outCount;
            objc_property_t * propertyList  = class_copyPropertyList(clazz, &outCount);
            
            for (int i = 0; i < outCount; i++)
            {
                //取出类文件中,相关属性的描述
               objc_property_t property_t = propertyList[i];
                
                //属性的名称
                NSString * property_keyName = [NSString stringWithUTF8String:property_getName(property_t)];
                
                //根据key取出字典中对应的值
                value = dict[property_keyName];
                
                //与属性相关的描述,当中最为重要的就是属性的数据类型
//                const char * attributes = property_getAttributes(property_t);
                
                NSString * attributes = [NSString stringWithUTF8String:property_getAttributes(property_t)];
                
                //[attributes containsString:@"Address"]
                NSRange range = [attributes rangeOfString:@"Address"];
                if(range.location != NSNotFound)
                {
                    Class clazz = [Address class];
                    value = [clazz objectWithKeyValues:dict[property_keyName]];
                }
                
//                NSLog(@"attributes %@",attributes);
                
//                NSLog(@"property_keyName %@",property_keyName);
                
                
                //使用kvc 存储值
                [self setValue:value forKey:property_keyName];
            }
            
            
//            [self setValue:value forKey:key];
        
            
//        }//end for
        
        
    }//end if
    return self;
}

@end
