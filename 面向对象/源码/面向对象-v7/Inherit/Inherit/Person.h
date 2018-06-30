//
//  Person.h
//  ClassAndObject
//
//  Created by bo on 16/8/29.
//  Copyright © 2016年 jike. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject //所有OC类的最终父类，就是根类

//@property 自动生成实例变量的set和get方法供外界使用
//notatomic 非原子性
// strong:强引用，适用于OC对象，一般使用strong weak:适用于OC对象，特殊情况如循环引用，delegate assign:使用与基本数据类型如int,Bool,float等
//readwrite:可读可写 readonly:只读，属性只能读取，不能在外界修改
@property (nonatomic, strong, readwrite) NSString *name;
@property (nonatomic, assign, readwrite) int age;

-(void)print;

-(void)setName:(NSString*)name age:(int)age;

@end
