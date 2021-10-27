//
//  main.m
//  foundation
//
//  Created by lw on 2018/3/7.
//  Copyright © 2018年 lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "SortHelper.hpp"
#import <objc/message.h>
#import "Person.h"
#import "test1.hpp"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        test t = new test1();
        
    }
    return 0;
}

//int movesToMakeZigzag(int* nums, int numsSize){
//    int n=sizeof(nums),i,j,s=0,t=0;
//    for(i=0;i<n;i+=2)//以偶数位元素为中心元素，使中心元素最小
//    {
//        j=0;
//        if(i)
//            j=MAX(j,nums[i]-nums[i-1]+1);
//        if(i+1<n)
//            j=Max(j,nums[i]-nums[i+1]+1);
//        s+=j;
//    }
//    for(i=1;i<n;i+=2)//以奇数位为中心元素，使中心元素最小
//    {
//        j=0;
//        if(i)j=Max(j,nums[i]-nums[i-1]+1);
//        if(i+1<n)j=max(j,nums[i]-nums[i+1]+1);
//        t+=j;
//    }
//    return min(s,t);
//}

//- (void)test {
    
    //        Person *p = [Person alloc];
    //        p = [p init];
    //        NSURL *url = [NSURL URLWithString:@"https://www.jianshu.com/p/41ecb06ae95f"];
    
    //        getchar(); //防止屏幕退出，接收一个字符才退出
    
    //        dispatch_queue_t q = dispatch_get_global_queue(0, 0);
    //        dispatch_sync(q, ^{
    //            NSLog(@"%@",[NSThread currentThread]);
    //        });
    //        dispatch_async(q, ^{
    //            NSLog(@"%@",[NSThread currentThread]);
    //        });
    
    //        NSString *str = @"cheet";
    //        str = @"cheetmmmm";
    //        void(^block)() = ^{
    //            NSLog(@"%@",str);
    //        };
    //        str = @"moble";
    //        block();
    
    //
    //        NSMutableArray *arr = [[NSMutableArray alloc] initWithCapacity:10];
    //        for(int i=0; i<10; i++) {
    //            [arr addObject:[NSNumber numberWithInt:i]];
    //        }
    //
    //        for(NSNumber *num in arr){
    //            [arr removeObject:num];
    //        }
    
    //        for (int i=0; i<50; i++) {
    //            dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
    //                NSLog(@"%@",[NSThread currentThread]);
    //                sleep(10);
    //            });
    //        }
    //        NSLog(@"finish");
//}

void sortArray() {
    NSArray *array = @[@"b",@"f",@"a",@"e",@"g"];
    //用系统默认compare方法排序：只支持升序
    NSArray *a = [array sortedArrayUsingSelector:@selector(compare:)];
    NSLog(@"%@%@",a,array);
}

void cppSortDemo() {
    int n = 10;
    int *arr = SortHelper::generateRandomArray(n, 5, 9);
    for (int i=0; i<n; i++) {
        NSLog(@"%d",arr[i]);
    }
}

