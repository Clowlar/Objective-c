//
//  Person.h
//  DynamicType
//
//  Created by bo on 16/8/30.
//  Copyright © 2016年 jike. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) int age;

-(void)setName:(NSString*)name age:(int)age;
-(void)print;
@end
