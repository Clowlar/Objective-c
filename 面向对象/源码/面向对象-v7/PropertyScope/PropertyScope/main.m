//
//  main.m
//  PropertyScope
//
//  Created by bo on 16/8/29.
//  Copyright © 2016年 jike. All rights reserved.
//

#import <Foundation/Foundation.h>
#import  "Person.h"

//static和const
void test() {/
    const int count = 0;//static静态变量会保留一开始的值,const变量在赋值之后就不能再改变了，变成了常量了
    count++;
    NSLog(@"count = %i",count);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *person = [[Person alloc]init];
//        person->_name;//protected无法访问
//        person->_sex;//private无法访问
        person->_age = 12;//public可以访问
        
        str = @"天气很坏";
        NSLog(@"%@",str);
        
        test();
        test();
        test();
    }
    return 0;
}

