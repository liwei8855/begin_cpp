//
//  Tips.m
//  foundation
//
//  Created by lee on 2018/5/24.
//  Copyright © 2018年 lee. All rights reserved.
//

#import "Tips.h"

typedef void(^capture)(void);
capture capture2;

@implementation Tips

void block2() {
    int __block global = 1000;
    NSLog(@"%d==%p",global,&global); //1000
    void (^block)(void) = ^() {
        global++;   //不加__block：改变局部变量编译不通过
        NSLog(@"%d==%p",global,&global);//1001
    };
    block();
    NSLog(@"%d==%p",global,&global);//1000
}

@end
