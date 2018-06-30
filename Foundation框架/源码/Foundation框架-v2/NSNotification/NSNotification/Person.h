//
//  Person.h
//  KVCAndKVO
//
//  Created by bo on 16/9/8.
//  Copyright © 2016年 jike. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Phone.h"

static NSString *PhoneNameChangeNotification = @"PhoneNameChangeNotification";

@interface Person : NSObject

- (Person*)initWithName:(NSString*)name phone:(Phone*)phone;

@end
