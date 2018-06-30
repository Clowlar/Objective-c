//
//  Person.h
//  KVCAndKVO
//
//  Created by bo on 16/9/8.
//  Copyright © 2016年 jike. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) int age;

- (Person*)initWithName:(NSString*)name age:(int)age;

@end
