//
//  main.m
//  PropertyAndFunction
//
//  Created by bo on 16/8/24.
//  Copyright © 2016年 jike. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Student *student = [[Student alloc]init];
        [student setName:@"小明" age:18 score:100];
        [student print];
        [student study];
    }
    return 0;
}
