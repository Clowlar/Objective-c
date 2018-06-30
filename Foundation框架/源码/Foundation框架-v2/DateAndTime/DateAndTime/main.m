//
//  main.m
//  DateAndTime
//
//  Created by jinbo on 16/9/2.
//  Copyright © 2016年 jike. All rights reserved.
//

#import <Foundation/Foundation.h>

int main2(int argc, const char * argv[]) {
    @autoreleasepool {
        //初始化
        NSDate *now = [NSDate date];
        NSDate *before = [[NSDate date]dateByAddingTimeInterval:-100000];
        NSLog(@"now:%@,before:%@",now,before);
        
        //获取当前的时间戳
        NSLog(@"距离1970年%f毫秒",[[NSDate date]timeIntervalSince1970]);
        
        NSLog(@"now - before = %f毫秒",[now timeIntervalSinceDate:before]);
        
        //格式化输出日期 NSDate -> NSString
        NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
        formatter.dateFormat = @"yyyy-MM-dd HH:mm:ss";//年-月-日 时:分:秒
        NSString *nowStr = [formatter stringFromDate:now];
        NSLog(@"当前格式化时间为%@",nowStr);
        //NSString -> NSDate
        NSDate *date = [formatter dateFromString:nowStr];
        NSLog(@"%@",date);
        
        //时间戳 -> NSDate
        double timeStamp = 1445164401.1579;//毫秒数
        date = [NSDate dateWithTimeIntervalSince1970:timeStamp];
        NSLog(@"%@",date);
    }
    return 0;
}

int main(int argc, const char * argv[]) {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDate *date = [NSDate date];
    NSCalendarUnit unit = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    NSDateComponents *components = [calendar components:unit fromDate:date];
    NSLog(@"year = %li,month = %li,day = %li,hour = %li,miniute = %li,second = %li",components.year,components.month,components.day,components.hour,components.minute,components.second);
    
    //比较两个日期的差距
    NSString *date1Str = @"2016-09-01 12:10:15";
    NSString *date2Str = @"2016-09-03 10:10:10";
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    formatter.dateFormat = @"yyyy-MM-dd HH:mm:ss";
    NSDate *date1 = [formatter dateFromString:date1Str];
    NSDate *date2 = [formatter dateFromString:date2Str];
    components = [calendar components:unit fromDate:date1 toDate:date2 options:0];
    NSLog(@"year = %li,month = %li,day = %li,hour = %li,miniute = %li,second = %li",components.year,components.month,components.day,components.hour,components.minute,components.second);

}