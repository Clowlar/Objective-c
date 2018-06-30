//
//  Book.m
//  DynamicType
//
//  Created by bo on 16/8/30.
//  Copyright © 2016年 jike. All rights reserved.
//

#import "Book.h"

@implementation Book

-(void)setName:(NSString *)name page:(int)page {
    self.name = name;
    self.page = page;
}

-(void)print {
    NSLog(@"%@的页数为%i",self.name,self.page);
}
@end
