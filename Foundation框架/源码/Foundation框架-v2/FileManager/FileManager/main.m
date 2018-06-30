//
//  main.m
//  FileManager
//
//  Created by jinbo on 16/9/6.
//  Copyright © 2016年 jike. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //文件管理
        
        //获取沙盒路径
        NSString *filePath = [NSHomeDirectory() stringByAppendingPathComponent:@"file.text"];
        NSString *folderPath = [NSHomeDirectory() stringByAppendingPathComponent:@"folder"];
        
        NSLog(@"%@",filePath.pathComponents);//返回路径的组成部分
        NSLog(@"%@",filePath.lastPathComponent);//返回路径的最后组成部分
        NSLog(@"%@",filePath.pathExtension);//返回路径的扩展名
        
        //NSFileManager 对文件进行操作:创建、赋值、剪切、删除等
        NSFileManager *manager = [NSFileManager defaultManager];
        NSData *data = [@"今天天气真好" dataUsingEncoding:NSUTF8StringEncoding];
        BOOL success = [manager createFileAtPath:filePath contents:data attributes:nil];
        if (success) {
            NSLog(@"文件创建成功");
        } else {
            NSLog(@"文件创建失败");
        }
        
        //创建文件夹
        [manager createDirectoryAtPath:folderPath withIntermediateDirectories:YES attributes:nil error:nil];
        
        //读取文件
        data = [manager contentsAtPath:filePath];
        NSString *s = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
        NSLog(@"%@",s);
        
        //移动，复制和删除操作
        NSString *targetPath = [folderPath stringByAppendingPathComponent:@"newfile.text"];
        [manager moveItemAtPath:filePath toPath:targetPath error:nil];
//        manager copyItemAtPath:<#(nonnull NSString *)#> toPath:<#(nonnull NSString *)#> error:<#(NSError * _Nullable __autoreleasing * _Nullable)#>
//        manager removeItemAtPath:<#(nonnull NSString *)#> error:<#(NSError * _Nullable __autoreleasing * _Nullable)#>
        
        //获取文件属性
        NSDictionary *fileAttributes = [manager attributesOfItemAtPath:filePath error:nil];
        NSLog(@"属性为%@",fileAttributes);
    }
    return 0;
}
