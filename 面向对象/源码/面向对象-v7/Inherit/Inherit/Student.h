//
//  Student.h
//  Inherit
//
//  Created by bo on 16/8/29.
//  Copyright © 2016年 jike. All rights reserved.
//

#import "Person.h"

@interface Student : Person

//除了继承了Person的name和age属性，增加新的属性score
@property (nonatomic, assign) int score;

//扩展新方法
-(void)study;

-(void)setName:(NSString *)name age:(int)age score:(int)score;

//重载父类方法
-(void)print;

@end
