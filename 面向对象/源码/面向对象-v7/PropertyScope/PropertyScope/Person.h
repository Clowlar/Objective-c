//
//  Person.h
//  PropertyScope
//
//  Created by bo on 16/8/29.
//  Copyright © 2016年 jike. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString *str;

@interface Person : NSObject {//实例变量
    @protected
    NSString *_name;//默认是@protected的效果，表示可以被本类或者子类访问
    @public //下面的实例变量可以被所有类访问
    int _age;
    @private //表示只能被本类访问
    int _sex;
}

@end

