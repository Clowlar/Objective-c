//
//  main.m
//  LoopStatement
//
//  Created by bo on 16/8/19.
//  Copyright © 2016年 jike. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //计算1+2+...100的和
        int sum = 0;
        for (int i = 1; i <= 100; i++) {
            sum += i;
        }
        NSLog(@"1+2+3...100 = %d",sum);
        
        //while
        sum = 0;
        int i = 1;
        while (i <= 100) {
            sum += i;
            i++;
        }
        NSLog(@"while : 1+2+3+...100 = %d",sum);
        
        //do..while
        sum = 0;
        i = 1;
        do {
            sum += i;
            i++;
        } while(i<=100);
        NSLog(@"do..while : 1+2+3...100 = %d",sum);
        
        //循环跳转 break:中断循环 continue:跳过单次循环
        //计算1...100之间奇数的和
        sum = 0;
        for (int i = 1; i <= 100; i++) {
            if (i % 2 == 0) {
                continue;
            }
            sum += i;
        }
        NSLog(@"1...100的奇数和为%d",sum);
        
        sum = 0;
        for (int i = 1; i <= 100; i++) {
            if (i >= 50) {
                break;
            }
            sum += i;
        }
        NSLog(@"1+2+3+...49 = %d",sum);
    }
    return 0;
}
