//
//  main.m
//  OperatorAndExpression
//
//  Created by jinbo on 16/8/10.
//  Copyright © 2016年 jike. All rights reserved.
//

#import <Foundation/Foundation.h>

int main2(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int a = 41;
        int b = 5;
        NSLog(@"a + b = %i", a + b);
        NSLog(@"a - b = %i", a - b);
        NSLog(@"a * b = %i", a * b);
        NSLog(@"a / b = %i", a / b);
        NSLog(@"a %% b = %i", a % b);
        
        a++; //a = a + 1;
        NSLog(@"a = %i",a);
        a--; // a = a - 1;
        NSLog(@"a = %i",a);
    }
    return 0;
}

int main3(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //赋值运算符
        int a = 5;
        int b = 3;
        a = b;
        NSLog(@"a = %i",a);
        
        //扩展的赋值运算符 += -= *= /= %=
        int c = 5;
        c += b;//相当于c = c + b
        NSLog(@"c = %d",c);
        c -= 1;
        NSLog(@"c = %d",c);
        c %= 5;
        NSLog(@"c = %d",c);
    }
    return 0;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //比较运算符
        int a = 5;
        int b = 4;
        NSLog(@"a > b : %d",a > b);//YES
        NSLog(@"a >= b : %d",a >= b);//YES
        NSLog(@"a < b : %d",a < b);//NO
        NSLog(@"a == b : %d",a == b);//NO
        NSLog(@"a != b : %d",a != b);//YES
        //逻辑运算符
        NSLog(@"a > b && a < b : %d",a > b && a < b);//YES && NO = NO;有一个为假整个表达式就为假
        NSLog(@"a > b || a < b : %d",a > b || a < b);//YES || NO = YES;有一个为真整个表达式就为真
        NSLog(@"!(a > b) : %d",!(a > b));//结果取反
        
        //三目运算符
        NSLog(a > b ? @"a大于b" : @"a不大于b");
    }
    return 0;
}