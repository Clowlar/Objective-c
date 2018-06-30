//
//  Person.m
//  ClassAndObject
//
//  Created by bo on 16/8/29.
//  Copyright © 2016年 jike. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)setName:(NSString*)name {
    _name = name;
}

-(NSString*)getName {
    return _name;
}

-(void)setAge:(int)age {
    _age = age;
}

-(int)getAge {
    return _age;
}

-(void)print {
    NSLog(@"%@的年龄为%i",_name,_age);
}

@end
