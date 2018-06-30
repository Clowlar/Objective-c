//
//  main.m
//  ClassAndObject
//
//  Created by bo on 16/8/24.
//  Copyright © 2016年 jike. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *person = [[Person alloc]init];//对象初始化的固定格式
        [person setName:@"小明"];
        [person setAge:18];
        [person print];
    }
    return 0;
}
