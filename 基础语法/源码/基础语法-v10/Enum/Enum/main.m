//
//  main.m
//  Enum
//
//  Created by bo on 16/8/22.
//  Copyright © 2016年 jike. All rights reserved.
//

#import <Foundation/Foundation.h>

//枚举定义

typedef NS_ENUM(int, Week) {//单项枚举，连续整数
    WeekMonday = 0,
    WeekTuesday,
    WeekWednesday,
    WeekThursday,
    WeekFriday,
    WeekSaturday,
    WeekSunday
};

typedef NS_OPTIONS(int, OptionsWeek) {//用于多选的 保证|逻辑运算结果唯一，一般使用位移的整数来表示
    //实际上，NS_ENUM和NS_OPTIONS性质是一样的，最后都是用整数表示的，和整数并没有什么区别，只是为了代码好看，逻辑统一，约束编码规则的
    OptionsWeekMonday = 0,          //00000000
    OptionsWeekTuesday = 1 << 0,    //00000001
    OptionsWeekWednesday = 1 << 1,  //00000010
    OptionsWeekThursday = 1 << 2,   //00000100
    OptionsWeekFriday = 1 << 3,
    OptionsWeekSaturday = 1 << 4,
    OptionsWeekSunday = 1 << 5
};
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Week oneDay = Monday + Tuesday;
        NSLog(@"oneDay is %d",oneDay);
    }
    return 0;
}
