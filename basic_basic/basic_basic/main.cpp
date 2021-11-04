//
//  main.cpp
//  basic_basic
//
//  Created by 李威 on 2021/10/27.
//

#include <iostream>
#include "func_overload.hpp"
using namespace std;
void test2();
void test3();



int main(int argc, const char * argv[]) {
    // insert code here...
//    cout << "Hello, World!\n";
//    double s = sum(10, 12.2);
//    double l = sum(10, 12.2);
//    cout << "s: " << s << ", l: " << l << endl;
    
    getchar();
    return 0;
}

///初始化
void test3(){
    int size = sizeof(int)*10;
    int *p = (int *)malloc(size);
//    *p = 0; //只把前4个字节设置为0了
    
    //内存清0
    memset(p, 0, size);//从p这个地址开始连续的size个字节每一个字节都设置为0
    /*将4个字节设置为1 与 将4个字节中的每一个字节都设置为1 是不一样的
     4个字节设置为1:
     00000000 00000000 00000000 00000001
     4个字节每一个字节设置为1：
     00000001 00000001 00000001 00000001
     */
    
    int *p0 = new int;
    int *p1 = new int();//默认初始化为0
    int *p2 = new int(5);//初始化为5
    cout << *p0 << "---" << *p1 << "---" << *p2 << endl;
    
    int arr[4] = {5};//只有首元素是5
    for (int i=0; i<4; i++) {
        cout << "[" << arr[i] << "]";
    }
}

///分配内存
void test2(){
    //c语言适用
    int *p = (int *)malloc(4);
//    *p = 4;
    cout << *p << " ___ " << p << endl;
    free(p);
//    free(p); //多次释放会崩溃
    cout << *p << "  after p free :" << p;
    
    cout << endl;
    
    //c++
    int *p1 = new int;
    *p1 = 20;
    cout << *p1 << " ___ " << p1 << endl;
    delete p1;
    cout << *p1 << "  after p1 free :" << p1;
    
    //数组
    char *p2 = new char[4];
    delete[] p2;//如果delete p2只回收了一个字节
}

/// 输入

void test(){
    cout << "hello world" << endl;
    int age;
    cout << "type a number:" << endl;
    cin >> age;
    cout << "age is " << age << endl;
}
