//
//  main.m
//  SelectStatement
//
//  Created by bo on 16/8/20.
//  Copyright © 2016年 jike. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //if语句，用于分支少的情况
        int a = 2;
        if (a > 2) {
            NSLog(@"a大于2");
        } else if (a == 2) {
            NSLog(@"a等于2");
        } else {
            NSLog(@"a小于2");
        }
        
        //switch语句，主要用于分支较多的情况
        switch (a) {
            case 1:
                NSLog(@"first");
                break;
            case 2:
                NSLog(@"second");
                break;
            case 3:
                NSLog(@"third");
                break;
            case 4:
                NSLog(@"forth");
            default://如果所有分支都不满足，会执行这个默认的分支
                NSLog(@"others");
                break;
        }
    }
    return 0;
}
