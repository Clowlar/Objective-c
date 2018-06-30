//
//  Person.h
//  KVCAndKVO
//
//  Created by bo on 16/9/8.
//  Copyright © 2016年 jike. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Phone.h"

@interface Person : NSObject

- (Person*)initWithName:(NSString*)name phone:(Phone*)phone;

@end
