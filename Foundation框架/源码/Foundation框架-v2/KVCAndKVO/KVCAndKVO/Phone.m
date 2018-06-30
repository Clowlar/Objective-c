//
//  Phone.m
//  KVCAndKVO
//
//  Created by bo on 16/9/8.
//  Copyright © 2016年 jike. All rights reserved.
//

#import "Phone.h"

@interface Phone()

//在这里面编写的属性全是私有属性，外界无法直接访问
@property (nonatomic, strong) NSString *name;

@end

@implementation Phone

- (Phone*)initWithName:(NSString*)name
{
    self = [super init];
    if (self) {
        self.name = name;
    }
    return self;
}

//用于NSLog打印对象输出的信息
- (NSString *)description
{
    return [NSString stringWithFormat:@"%@手机", self.name];
}
@end
