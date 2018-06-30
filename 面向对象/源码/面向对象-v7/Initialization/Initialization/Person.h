//
//  Person.h
//  ClassAndObject
//
//  Created by bo on 16/8/29.
//  Copyright © 2016年 jike. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, strong, readwrite) NSString *name;
@property (nonatomic, assign, readwrite) int age;

-(void)print;

//自定义构造方法以initWith开头后面接构造参数，返回构造好的对象
-(Person*)initWithName:(NSString*)name age:(int)age;
-(void)setName:(NSString*)name age:(int)age;

@end
