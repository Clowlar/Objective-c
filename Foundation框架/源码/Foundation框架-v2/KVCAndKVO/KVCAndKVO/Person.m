//
//  Person.m
//  KVCAndKVO
//
//  Created by bo on 16/9/8.
//  Copyright © 2016年 jike. All rights reserved.
//

#import "Person.h"

@interface Person()

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) Phone *phone;

@end

@implementation Person

- (Person*)initWithName:(NSString*)name phone:(Phone*)phone
{
    self = [super init];
    if (self) {
        self.name = name;
        self.phone = phone;
        //KVO添加属性观察器
        //self.phone被观察对象 self是观察者 keyPath是需要观察的被观察者的任意层级属性
        [self.phone addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:nil];
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@有%@", self.name,self.phone.description];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if ([keyPath isEqualToString:@"name"]) {
        NSLog(@"%@",[NSString stringWithFormat:@"手机改名字了,从%@变为%@",change[@"old"],change[@"new"]]);
    }
}

- (void)dealloc
{
    [self.phone removeObserver:self forKeyPath:@"name"];
}
@end
