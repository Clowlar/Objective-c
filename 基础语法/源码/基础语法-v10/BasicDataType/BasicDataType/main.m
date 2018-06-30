//
//  main.m
//  BasicDataType
//
//  Created by bo on 16/8/7.
//  Copyright © 2016年 jike. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //整型
        int intValue = 5;
        short shortValue = 5;
        long longValue = 5;
        long long longlongValue = 5;
        NSLog(@"%i,%hi,%li,%lli",intValue,shortValue,longValue,longlongValue);
        
        //浮点型
        float floatValue = 5.0;
        double doubleValue = 5.0;
        NSLog(@"浮点数据:%f,%f",floatValue,doubleValue);
        //科学计数法
        double doubleValue2 = 6.6e10;
        NSLog(@"科学计数法数据：%e",doubleValue2);
        //字符类型
        char charValue = 'a';
        NSLog(@"%c \n b \t c \\ \" \' %%",charValue);
        
        //隐式转换
        NSLog(@"%f",intValue + floatValue);
        //显式转换
        int result = intValue + (int)floatValue;
        NSLog(@"%d",result);
    }
    return 0;
}
