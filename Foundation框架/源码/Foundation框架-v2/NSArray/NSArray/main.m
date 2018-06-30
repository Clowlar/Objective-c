//
//  main.m
//  NSArray
//
//  Created by jinbo on 16/9/2.
//  Copyright © 2016年 jike. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //初始化
        NSArray *array = [NSArray array];//空数组
        array = [NSArray arrayWithObjects:@"小明",@(18),@(YES), nil];
        NSLog(@"array = %@",array);
        
        array = @[@"小王",@(18),@(NO)];
        
        //数组的元素个数
        NSLog(@"array包含%li个元素",array.count);
        
        //访问数组的元素
        int index = 4;
        if (index < array.count) {
            NSLog(@"%@",[array objectAtIndex:index]);
            NSLog(@"%@",array[index]);
        }
        
        //追加元素(返回新的数组)
        array = [array arrayByAddingObject:@(3)];
        array = [array arrayByAddingObjectsFromArray:@[@(2),@(1)]];
        NSLog(@"array = %@",array);
        
        //是否包含指定的对象
        NSString *name = array[0];
        //NSNumber是根据数值大小判断的，NSString是根据内存地址判断的，最终都是调用isEqual方法来进行比较
        NSLog(@"isContains: %d",[array containsObject:@(2)]);
        NSLog(@"isContains: %d",[array containsObject:name]);
        
        //查找对象所在索引
        //NSNumber是根据数值大小判断的，NSString是根据内存地址判断的
        NSLog(@"indexOf %@ is %li",name,[array indexOfObject:name]);
        
        //遍历数组
        for (int i = 0; i< array.count; i++) {
            NSObject *object = array[i];
            break;
        }
        for (NSObject *object in array) {
            NSLog(@"element: %@",object);
            break;
        }
        [array enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            if (idx == 2) {
                *stop = YES;
            } else {
                NSLog(@"idx = %ld,obj = %@",idx,obj);
            }
        }];
        
        //NSMutableArray 可以改变数组内容的数组
        NSMutableArray *mutArray = [NSMutableArray array];
        [mutArray addObject:@"Jack"];
        [mutArray addObjectsFromArray:@[@(18),@(YES)]];
        [mutArray insertObject:@"Lucy" atIndex:0];
        [mutArray removeObjectAtIndex:2];
    }
       
    return 0;
}
