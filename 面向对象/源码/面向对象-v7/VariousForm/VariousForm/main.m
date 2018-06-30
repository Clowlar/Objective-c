//
//  main.m
//  VariousForm
//
//  Created by bo on 16/8/26.
//  Copyright © 2016年 jike. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
#import "Cat.h"

//void feed(Animal *animal) {
//    [animal eat];
//}
//
//void feed(Dog *dog) {
//    [dog eat];
//}
//
//void feed(Cat *cat) {
//    [cat eat];
//}

void feed(Animal *animal) {
    NSLog(@"喂养它");
    [animal eat];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Animal *animal = [[Animal alloc]init];
        [animal eat];
        
        Dog *dog = [[Dog alloc]init];
        [dog eat];
        
        Cat *cat = [[Cat alloc]init];
        [cat eat];
        
        animal = [[Dog alloc]init]; //父类指向子类对象,animal变成Dog的对象
        [animal eat];//进行动态监测,以调用真实的对象方法 注意：animal到底是动物还是狗，让人疑惑，所以实际情况最好是什么类型就填写什么类型
        [((Dog*)animal) run];//父类的指针变量不能直接调用子类特有的方法，需要强制转换成对应的子类才能调用

        feed(dog);
        feed(cat);
        
    }
    return 0;
}
