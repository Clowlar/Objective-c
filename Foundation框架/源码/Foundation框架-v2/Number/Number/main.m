//
//  main.m
//  Number
//
//  Created by bo on 16/8/31.
//  Copyright © 2016年 jike. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //NSNumber是数字类型的OC对象，所有OC基本数据类型都可以和它相互转换
        NSNumber *integerNumber = [NSNumber numberWithInteger:100];
        NSInteger integerValue = [integerNumber integerValue];//NSInteger是typedef类型 32位机器是int,64位机器是long
        
        //int short long long long
        NSNumber *longlongNumber = [NSNumber numberWithLongLong:143892489];
        long long longlongValue = [longlongNumber longLongValue];
        NSLog(@"%li...%lli",(long)integerValue,longlongValue);
        
        //float double
        NSNumber *floatNumber = [NSNumber numberWithFloat:5.5];
        float floatValue = [floatNumber floatValue];
        
        //BOOL
        NSNumber *boolNumber = [NSNumber numberWithBool:YES];
        BOOL boolValue = [boolNumber boolValue];
        
        //@()快捷初始化NSNumber数字类型
        NSNumber *number1 = @(1);
        NSNumber *number2 = @(NO);
        
        NSLog(@"%i",[number1 isEqualToNumber:number2]);
        NSLog(@"%i",[number1 compare:number2] == NSOrderedDescending);//compare结果为NSComparisonResult NSOrderedAscending表示左边小于右边 NSOrderedSame表示左右相同 NSOrderedDescending表示左边比右边大
    }
    return 0;
}
