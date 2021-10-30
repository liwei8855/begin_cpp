//
//  main.cpp
//  basic_basic
//
//  Created by 李威 on 2021/10/27.
//

#include <iostream>
using namespace std;

double sum(int a,double b);
double sum(double a, int b);

int main(int argc, const char * argv[]) {
    // insert code here...
    cout << "Hello, World!\n";
    double s = sum(10, 12.2);
    double l = sum(10, 12.2);
    cout << "s: " << s << "l: " << l;
    return 0;
}

///函数重载
///函数名相同，参数个数不同，参数类型不同，参数顺序不同
///返回值类型与函数重载无关

/*c不支持：
 c++采用name mangling(name decoration)技术，
 编译器默认对符号名（如函数名）进行改编、修饰
 */

double sum(int a,double b){
    cout << "int double\n";
    return a+b;
}

double sum(double a, int b){
    cout << "double int\n";
    return a+b;
}

///

void test(){
    cout << "hello world" << endl;
    int age;
    cout << "type a number:" << endl;
    cin >> age;
    cout << "age is " << age << endl;
}
