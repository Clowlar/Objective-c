//
//  main.m
//  DynamicType
//
//  Created by bo on 16/8/26.
//  Copyright © 2016年 jike. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Book.h"

int main2(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *person = [[Person alloc]init];
        [person setName:@"小明" age:18];
        Book *book = [[Book alloc]init];
        [book setName:@"钢铁是怎样炼成的" page:334];
        
        //动态类型
        //可以存储任何类型的对象
        //可以向它发送任何消息，即它可以调用所有的方法
        id object;
        object = person;
        [object print];
        
        //动态绑定
        //oc总是跟踪对象所属的类，然后动态调用方法
        //这个过程是在运行时进行的，而不是编译时
        object = book;
        [book print];
    }
    return 0;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *person = [[Person alloc]init];
        NSLog(@"%i",[person isKindOfClass:[NSObject class]]);//判断此类或者它的父类
        NSLog(@"%i",[person isMemberOfClass:[NSObject class]]);//仅仅判断此类
        
        SEL sel1 = @selector(setName:age:);//SEL表示对一个函数的引用
        SEL sel2 = @selector(setName:page:);
        if ([person respondsToSelector:sel1]) {//person对象是否实现了这个方法
            [person performSelector:sel1 withObject:@"小明" withObject:@(18)];//performSelector执行指定的方法，如果person中没有实现这个方法会直接崩溃
            [person performSelector:@selector(print)];
        }
    }
    return 0;
}