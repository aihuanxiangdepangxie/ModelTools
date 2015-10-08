//
//  main.m
//  02-Model封装
//
//  Created by qianfeng on 15-10-8.
//  Copyright (c) 2015年 肖喆. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        /*
         @"address":@{
         @"city":@"北京",
         @"cityNumber":@"中关村大街"
         }
         */
        
        //在开发一个,可能很复杂的东西的时候,一定要想办法将其简单化 HelloWorld程度
        NSDictionary * dict = @{@"name":@"xiaozhe",@"age":@(20),@"marry":@YES,@"abc":@(40)
                                ,
                                @"address":@{
                                        @"city":@"北京",
                                        @"cityNumber":@"中关村大街"
                                        }
                                };
        
        Person * p = [Person objectWithKeyValues:dict];
        
        NSLog(@"%@",p);
        
        NSString * city = p.address.city;
        
        NSLog(@"city %@",city);
        
        
        /*
        [类名 alloc]
        [类名 new];
        */
        //第三种创建对象的方式,利用类的Class描述,可以直接调用alloc方法创建一个新的对象
        Class clazzAddress = [Address class];
        Address * value =  [[clazzAddress alloc] init];
        value.city = @"安徽";
        NSLog(@"clazzAddress %@ city = %@",[value class],value.city);

        
    }
    return 0;
}
