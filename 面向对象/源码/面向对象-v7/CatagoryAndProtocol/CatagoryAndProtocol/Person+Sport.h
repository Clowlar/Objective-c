//
//  Person+Sport.h
//  CatagoryAndProtocol
//
//  Created by bo on 16/8/31.
//  Copyright © 2016年 jike. All rights reserved.
//

#import "Person.h"

//分类一般用于添加新的方法，如果需要添加实例变量或者重载已有方法，建议创建子类去做
@interface Person (Sport)

-(void)sport;

-(void)rest;

@end
