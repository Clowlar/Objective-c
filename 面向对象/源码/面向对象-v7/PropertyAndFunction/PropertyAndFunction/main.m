//
//  main.m
//  PropertyAndFunction
//
//  Created by bo on 16/8/24.
//  Copyright © 2016年 jike. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *person = [[Person alloc]init];//对象初始化的固定格式
//        [person setName:@"小明"];
        person.name = @"小明";//使用点语法读取和写入属性
        [person setAge:18];//也可以使用set和get方法
        [person print];
        [person setName:@"小王" age:19];
        [person print];
        NSLog(@"%@的年龄为%i",person.name,person.age);
        NSLog(@"%@",[Person personDescription]);
    }
    return 0;
}
