//
//  main.m
//  Initialization
//
//  Created by bo on 16/8/30.
//  Copyright © 2016年 jike. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *person = [[Person alloc]init];//默认构造方法
        //默认初始化完成后，所有的成员变量都是默认值
        [person print];
        
        person = [[Person alloc]initWithName:@"小明" age:18];
        [person print];
    }
    return 0;
}
