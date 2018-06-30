//
//  Book.h
//  DynamicType
//
//  Created by bo on 16/8/30.
//  Copyright © 2016年 jike. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) int page;

-(void)setName:(NSString*)name page:(int)page;
-(void)print;

@end
