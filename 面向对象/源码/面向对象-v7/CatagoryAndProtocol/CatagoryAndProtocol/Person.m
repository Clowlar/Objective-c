//
//  Person.m
//  PropertyAndFunction
//
//  Created by bo on 16/8/29.
//  Copyright © 2016年 jike. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)print {
    NSLog(@"%@的年龄为%i",_name,_age);
}

-(Person *)initWithName:(NSString *)name age:(int)age {
    self = [super init];//构造方法中可以改变self的指向
    if (self) {
        [self setName:name age:age];
    }
    return self;
}
-(void)setName:(NSString *)name age:(int)age {
    _name = name;
    self.age = age;//在类的内部可以使用实例变量也可以使用self点语法访问property
}

//遵守协议
-(void)breath {
    NSLog(@"%@呼吸",self.name);
}

-(void)study {
    NSLog(@"%@学习",self.name);
}

-(void)work {
    NSLog(@"%@工作",self.name);
}
@end
