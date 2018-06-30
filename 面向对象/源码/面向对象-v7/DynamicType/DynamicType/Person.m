//
//  Person.m
//  DynamicType
//
//  Created by bo on 16/8/30.
//  Copyright © 2016年 jike. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)setName:(NSString *)name age:(int)age {
    self.name = name;
    self.age = age;
}

-(void)print {
    NSLog(@"%@的年龄为%i",self.name,self.age);
}
@end
