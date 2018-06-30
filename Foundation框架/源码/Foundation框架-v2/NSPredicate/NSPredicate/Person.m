//
//  Person.m
//  KVCAndKVO
//
//  Created by bo on 16/9/8.
//  Copyright © 2016年 jike. All rights reserved.
//

#import "Person.h"

@implementation Person

- (Person*)initWithName:(NSString*)name age:(int)age
{
    self = [super init];
    if (self) {
        self.name = name;
        self.age = age;
    }
    return self;
}

-(NSString *)description {
    return [NSString stringWithFormat:@"name=%@,age=%d",self.name,self.age];
}
@end
