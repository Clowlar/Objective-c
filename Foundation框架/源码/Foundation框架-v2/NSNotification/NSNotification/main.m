//
//  main.m
//  KVCAndKVO
//
//  Created by bo on 16/9/7.
//  Copyright © 2016年 jike. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Observer.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Observer *observer = [[Observer alloc]init];
        
        Phone *phone = [[Phone alloc]initWithName:@"iPhone6"];
        Person *person = [[Person alloc]initWithName:@"小明" phone:phone];
        NSLog(@"%@",person.description);
        //setValue:forKey :设置指定key的属性，只能是单层的   setValue:forKeyPath：可以设置指定keyPath的属性，可以有多层，之间使用.分割
        [person setValue:@"小王" forKey:@"name"];
        NSLog(@"%@",person.description);
        [person setValue:@"小红" forKeyPath:@"name"];//这个keyPath可以代替key这个方法
        NSLog(@"%@",person.description);
        [person setValue:@"iPhone7" forKeyPath:@"phone.name"];//使用KeyPath可以设置更深层次的属性
        NSLog(@"%@",person.description);
        
        //KVO
    }
    return 0;
}
