//
//  Student.m
//  Inherit
//
//  Created by bo on 16/8/29.
//  Copyright © 2016年 jike. All rights reserved.
//

#import "Student.h"

@implementation Student

//扩展新方法
-(void)study {
    NSLog(@"好好学习，天天向上");
}

-(void)setName:(NSString *)name age:(int)age score:(int)score {
    [super setName:name age:age];//使用super调用父类方法来设置属性
    self.score = score;
}

//重载父类方法
-(void)print {
    NSLog(@"%@同学的年龄为%i,考了%i分",self.name,self.age,self.score);
}
@end
