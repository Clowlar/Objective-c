//
//  Observer.m
//  NSNotification
//
//  Created by bo on 16/9/8.
//  Copyright © 2016年 jike. All rights reserved.
//

#import "Observer.h"
#import "Person.h"

@implementation Observer

- (instancetype)init
{
    self = [super init];
    if (self) {
        //使用它来注册通知的监听器 self是监听器
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(nameChanged:) name:PhoneNameChangeNotification object:nil];
    }
    return self;
}

-(void)nameChanged:(NSNotification*)notification {
    NSLog(@"%@",[NSString stringWithFormat:@"接收通知(object:%@,userInfo:%@",notification.object,notification.userInfo]);
}

-(void)dealloc {
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}
@end
