//
//  main.m
//  foundation
//
//  Created by lw on 2018/3/7.
//  Copyright © 2018年 lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OrderDemo.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
//        NSMutableArray *array = [NSMutableArray array];
//        id obj = [array objectAtIndex:0];
        
        NSLog(@"%@",[NSThread currentThread]);
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            NSLog(@"%@",[NSThread currentThread]);
        });
    }
    return 0;
}
