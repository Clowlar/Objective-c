//
//  main.m
//  PreProgram
//
//  Created by bo on 16/8/20.
//  Copyright © 2016年 jike. All rights reserved.
//

//文件包含 #include 重复包含问题 #import 自动解决重复包含问题
#import <Foundation/Foundation.h>
#import <Foundation/NSEnergyFormatter.h>

#pragma mark - 1
//宏定义 #define
int main3(int argc, const char * argv[]) {
    @autoreleasepool {
#define PI 3.1415926
        double r = 10.0;
        double circlePerimeter = 2 * PI * r;
        NSLog(@"半径为%.1f圆的周长为%.2f",r,circlePerimeter);
#define PLUS(x,y) x + y
        NSLog(@"5 PLUS 1 = %d",PLUS(5, 1));
    }
    return 0;
}

#pragma mark - 2
//条件编译 #if #ifdef
int main2(int argc, const char * argv[]) {
    @autoreleasepool {
#define AGE 19
#if AGE >= 18
        NSLog(@"成年了");
#elif AGE >= 12
        NSLog(@"青少年");
#else 
        NSLog(@"儿童");
#endif
        
        //ifdef
#ifdef AGES //如果定义了AGE这个宏
        NSLog(@"存在年龄");
#else
        NSLog(@"年龄不存在");
#endif
    }
    return 0;
}

#pragma mark - 3
//错误、异常处理

int main(int argc, const char * argv[]) {
    @autoreleasepool {
#if AGE >= 18
//#error "好好学习，天天向上" //编译报错
#warning "好好学习，天天向上"
#endif
    }
    return 0;
}
