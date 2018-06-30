//
//  main.m
//  CatagoryAndProtocol
//
//  Created by bo on 16/8/31.
//  Copyright © 2016年 jike. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Person+Sport.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *person = [[Person alloc]initWithName:@"小明" age:18];
        //分类方法
        [person sport];
        [person rest];
        
        //协议方法
        [person study];
        [person breath];
        
        if ([person respondsToSelector:@selector(work)]) {
            [person work];
        }
    }
    return 0;
}
