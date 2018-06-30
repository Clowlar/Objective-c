//
//  main.m
//  NSDictionary
//
//  Created by jinbo on 16/9/2.
//  Copyright © 2016年 jike. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //初始化
        NSDictionary *dictionary = [NSDictionary dictionary];
        dictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"Jack",@"name",@(18),@"age", nil];
        dictionary = @{@"name":@"Jack",@"age":@(18)};
        NSLog(@"dictionary = %@",dictionary);
        
        //数量
        NSLog(@"字典长度为%li",dictionary.count);
        
        //访问字典中的元素
        NSString *name = [dictionary objectForKey:@"name"];
        int age = [dictionary[@"age"] intValue];
        NSLog(@"name = %@,age = %i",name,age);
        
        //遍历
        for (NSObject *object in [dictionary keyEnumerator]) {
            NSLog(@"字典的key为%@",object);
        }
        for (NSObject *object in [dictionary objectEnumerator]) {
            NSLog(@"字典的value为%@",object);
        }
        [dictionary enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
            NSLog(@"key为%@,value为%@",key,obj);
        }];
        
        //NSMutableDictionary
        NSMutableDictionary *mutDictionary = [NSMutableDictionary dictionaryWithDictionary:dictionary];
        [mutDictionary setObject:@(50) forKey:@"weight"];
        [mutDictionary removeObjectForKey:@"age"];
        NSLog(@"mutDictionary = %@",mutDictionary);
    }
    return 0;
}
