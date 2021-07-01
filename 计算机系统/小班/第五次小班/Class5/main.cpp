#include<stdio.h>
#include<stdlib.h>

int main() {  //分配内存地址不连续
    int *pi = new int(100);   //指针pi指向的内存是在堆区，专门储存程序运行时分配的内存
    char *p1 = (char *) malloc(10); //分配得来得10字节的区域在堆区
    char *p2 = (char *) malloc(10); //分配得来得10字节的区域在堆区
    int *p3 = (int *) malloc(16);
    printf(" 0x%x\n 0x%x\n 0x%x\n 0x%x", &pi, &p1, &p2, &p3);
    delete pi;                //自己释放
    delete p1;
    delete p2;
    delete p3;
    return 0;
}
