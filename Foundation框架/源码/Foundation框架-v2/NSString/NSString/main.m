//
//  main.m
//  NSString
//
//  Created by jinbo on 16/9/1.
//  Copyright © 2016年 jike. All rights reserved.
//

#import <Foundation/Foundation.h>

int main2(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //初始化
        NSString *str = @"你好";//字面量初始化
        NSLog(@"str = %@",str);
        str = [NSString stringWithFormat:@"%@你好，我%i岁",@"小明",18];//使用format拼接字符串的格式
        NSLog(@"str = %@",str);
        
        //长度
        long len = str.length;
        NSLog(@"str的字符长度为%li",len);
        
        //转换数值类型
        NSLog(@"%lli",[@"12345" longLongValue]);
        NSLog(@"%f",[@"12345.67" doubleValue]);
        
        //NSRange结构体不是对象所以不需要加*
        //loc表示范围起点的索引，从0开始的,len表示范围长度
        NSRange range =  NSMakeRange(5, 3);
        NSLog(@"range = %@",NSStringFromRange(range));
        
        //字串查找
        range = [@"abcdefg" rangeOfString:@"cde"];
        NSLog(@"range = %@",NSStringFromRange(range));
        NSLog(@"%@",[@"abcdefg" substringFromIndex:4]);
        NSLog(@"%@",[@"abcdefg" substringToIndex:4]);
        NSLog(@"%@",[@"abcdefg" substringWithRange:range]);
        
        //是否包含字串
        NSLog(@"%i",[@"abcdefg" hasPrefix:@"abC"]);
        NSLog(@"%i",[@"abcdefg" hasSuffix:@"efg"]);
        NSLog(@"%i",[@"abcdefg" containsString:@"cde"]);//谨慎使用，只能在iOS8上使用
        
        //比较字符串
        NSLog(@"%i",[@"abc" isEqualToString:@"ABC"]);
        NSLog(@"%i",[@"abc" compare:@"abd"] == NSOrderedAscending);
        
        //替换字符串，返回一个新的字符串
        NSLog(@"%@",[@"abcabc" stringByReplacingOccurrencesOfString:@"b" withString:@"B"]);
        NSLog(@"%@",[@"abcabc" stringByReplacingCharactersInRange:NSMakeRange(0, 3) withString:@"ABC"]);
        
        //增加字串，返回一个新的字符串
        NSLog(@"%@",[@"abc" stringByAppendingString:@"efg"]);
        NSLog(@"%@",[@"abc" stringByAppendingFormat:@"%iefg",2]);
        
        //拆分字符串
        NSArray *array = [@"abcdefg" componentsSeparatedByString:@"d"];
        NSLog(@"array = %@",array);
        NSLog(@"%@",[array componentsJoinedByString:@"d"]);
    }
    return 0;
}

int main(int argc, const char * argv[]) {
    //NSMutableString 内容可变的字符串
    NSMutableString *mutString = [NSMutableString stringWithString:@"abc"];
    mutString = [NSMutableString stringWithFormat:@"%@你好",@"小明"];
    NSLog(@"mutString = %@",mutString);
    
    //增加字串，可以直接修改它的内容
    [mutString appendString:@"。"];
    NSLog(@"%@",mutString);
    [mutString insertString:@"今天天气不错" atIndex:0];
    NSLog(@"%@",mutString);
    
}


