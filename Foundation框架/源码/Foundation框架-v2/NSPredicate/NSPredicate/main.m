//
//  main.m
//  KVCAndKVO
//
//  Created by bo on 16/9/7.
//  Copyright © 2016年 jike. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *persons = @[[[Person alloc]initWithName:@"a1" age:20],[[Person alloc]initWithName:@"b1" age:30],[[Person alloc]initWithName:@"c1" age:40],[[Person alloc]initWithName:@"d1" age:50],[[Person alloc]initWithName:@"a2" age:60],[[Person alloc]initWithName:@"c2" age:20],[[Person alloc]initWithName:@"b2" age:30],[[Person alloc]initWithName:@"d2" age:40],[[Person alloc]initWithName:@"a3" age:50],[[Person alloc]initWithName:@"a1" age:90]];
        
        //年龄小于30
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"age<=%d",30];
        NSArray *array = [persons filteredArrayUsingPredicate:predicate];
        NSLog(@"结果为%@",array);
        
        //名字为a1并且年龄小于30
        predicate = [NSPredicate predicateWithFormat:@"name = 'a1' && age < 30"];
        array = [persons filteredArrayUsingPredicate:predicate];
        NSLog(@"结果为%@",array);
        
        //IN(包含)
        predicate = [NSPredicate predicateWithFormat:@"name IN {'a1','b1','c1'}"];
        array = [persons filteredArrayUsingPredicate:predicate];
        NSLog(@"结果为%@",array);
        
        //BEGINSWITH
        predicate = [NSPredicate predicateWithFormat:@"name BEGINSWITH 'a'"];
        array = [persons filteredArrayUsingPredicate:predicate];
        NSLog(@"结果为%@",array);
        
        //ENDSWITH
        predicate = [NSPredicate predicateWithFormat:@"name ENDSWITH '2'"];
        array = [persons filteredArrayUsingPredicate:predicate];
        NSLog(@"结果为%@",array);
        
        //CONTAINS
        predicate = [NSPredicate predicateWithFormat:@"name CONTAINS 'a'"];
        array = [persons filteredArrayUsingPredicate:predicate];
        NSLog(@"结果为%@",array);
        
        //like
        //*代表任意多个字符，？代表一个字符
        predicate = [NSPredicate predicateWithFormat:@"name like '*a?'"];
        array = [persons filteredArrayUsingPredicate:predicate];
        NSLog(@"结果为%@",array);
    }
    return 0;
}
