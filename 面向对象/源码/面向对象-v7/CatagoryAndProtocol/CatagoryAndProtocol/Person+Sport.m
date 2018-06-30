//
//  Person+Sport.m
//  CatagoryAndProtocol
//
//  Created by bo on 16/8/31.
//  Copyright © 2016年 jike. All rights reserved.
//

#import "Person+Sport.h"

@implementation Person (Sport)

-(void)sport {
    [self print];//可以调用类的任何方法，最好不要去重载这些方法
    NSLog(@"正值壮年，少年去奔跑吧");
}

-(void)rest {
    NSLog(@"%@跑累了，需要休息",self.name);//可以访问实例变量，但不能添加实例变量
}
@end
