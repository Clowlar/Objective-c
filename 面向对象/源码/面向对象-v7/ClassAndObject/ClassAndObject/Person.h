//
//  Person.h
//  ClassAndObject
//
//  Created by bo on 16/8/29.
//  Copyright © 2016年 jike. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject {
    NSString *_name;//实例变量
    int _age;
}

//定义接口方法
-(void)setName:(NSString*)name;
-(NSString*)getName;
-(void)setAge:(int)age;
-(int)getAge;
-(void)print;

@end
