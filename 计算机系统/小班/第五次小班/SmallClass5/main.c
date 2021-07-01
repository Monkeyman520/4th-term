//#include <stdio.h>
//#include <string.h>
//#include <stdlib.h>
//
//
//void before() {
//
//}
//
//char g_buf[16];
//char g_buf2[16];
//char g_buf3[16];
//char g_buf4[16];
//char g_i_buf[] = "123";
//char g_i_buf2[] = "123";
//char g_i_buf3[] = "123";
//
//void after() {
//
//}
//
//struct varinfo {
//    int addr;
//    char name[10];
//};
//
//int main(int argc, char **argv) {
//    char l_buf[16];
//    char l_buf2[16];
//    char l_buf3[16];
//    static char s_buf[16];
//    static char s_buf2[16];
//    static char s_buf3[16];
//    char *p_buf;
//    char *p_buf2;
//    char *p_buf3;
//
//    p_buf = (char *) malloc(sizeof(char) * 16);
//    p_buf2 = (char *) malloc(sizeof(char) * 16);
//    p_buf3 = (char *) malloc(sizeof(char) * 16);
//
//    printf("g_buf: 0x%x\n", g_buf);
//    printf("g_buf2: 0x%x\n", g_buf2);
//    printf("g_buf3: 0x%x\n", g_buf3);
//    printf("g_buf4: 0x%x\n", g_buf4);
//
//    printf("g_i_buf: 0x%x\n", g_i_buf);
//    printf("g_i_buf2: 0x%x\n", g_i_buf2);
//    printf("g_i_buf3: 0x%x\n", g_i_buf3);
//
//    printf("l_buf: 0x%x\n", l_buf);
//    printf("l_buf2: 0x%x\n", l_buf2);
//    printf("l_buf3: 0x%x\n", l_buf3);
//
//    printf("s_buf: 0x%x\n", s_buf);
//    printf("s_buf2: 0x%x\n", s_buf2);
//    printf("s_buf3: 0x%x\n", s_buf3);
//
//    printf("p_buf: 0x%x\n", p_buf);
//    printf("p_buf2: 0x%x\n", p_buf2);
//    printf("p_buf3: 0x%x\n", p_buf3);
//
//    printf("before: 0x%x\n", before);
//    printf("after: 0x%x\n", after);
//    printf("main: 0x%x\n", main);
//
//    if (argc > 1) {
//        strcpy(l_buf, argv[1]);
//    }
//    return 0;
//}

//#include <stdio.h>
//
//int a1, a2, a3;
//int x = 0, y = 1, z = 2;
//
//int main() {
//    int b1, b2;
//    int b3 = 3;
//    a1 = 0xa1;
//    a2 = 0xa2;
//    a3 = 0xa3;
//    b1 = 0xb1;
//    b2 = 0xb2;
//    b3 = 0xb3;
//    printf("x:0x%x\n", &x);
//    printf("y:0x%x\n", &y);
//    printf("z:0x%x\n", &z);
//    printf("a1:0x%x\n", &a1);
//    printf("a2:0x%x\n", &a2);
//    printf("a3:0x%x\n", &a3);
//    printf("b1:0x%x\n", &b1);
//    printf("b2:0x%x\n", &b2);
//    printf("b3:0x%x\n", &b3);
//}

//#include <stdio.h>
//#include <string.h>
//#include <stdlib.h>
//void p(char a[]) {
//    char b[16];
//    char c[16];
//    printf("a: 0x%x\n", a);
//    printf("b: 0x%x\n", b);
//    printf("c: 0x%x\n", c);
//	p(b);
//}
//int main() {
//    char p1[16];
//    char p2[16];
//    char p3[16];
//    printf("p1: 0x%x\n", p1);
//    printf("p2: 0x%x\n", p2);
//    printf("p3: 0x%x\n", p3);
//    p(p1);
////    p(p2);
////    p(p3);
//    return 0;
//}
#include <stdio.h>
int a2, a3;
int y = 1, z = 2;
int main() {
    int b2;
    int b3 = 3;
    a2 = 0xa2;
    a3 = 0xa3;
    b2 = 0xb2;
    b3 = 0xb3;
    printf("y:0x%x\n", &y);
    printf("z:0x%x\n", &z);
    printf("a2:0x%x\n", &a2);
    printf("a3:0x%x\n", &a3);
    printf("b2:0x%x\n", &b2);
    printf("b3:0x%x\n", &b3);
    return 0;
}

//
//#include <stdio.h>
//int a1, a2, a3;
//void f(void);
//void g(void);
//void h(void);
//void main() {
//    int b1, b2, b3;
//    a1 = 0xa1;
//    a2 = 0xa2;
//    a3 = 0xa3;
//    b1 = 0xb1;
//    b2 = 0xb2;
//    b3 = 0xb3;
//}
//
//void f(void) {
//    int c1, c2, c3;
//    a1 = 0x0fa1;
//    a2 = 0x0fa2;
//    a3 = 0x0fa3;
//    c1 = 0xc1;
//    c2 = 0xc2;
//    c3 = 0xc3;
//    c1 = c2 + c3;
//}
//
//void g(void) {
//    int i = 100;
//    while (i--);
//}
//
//void h(void) {
//    int h1, h2, h3, h4, h5, h6, h7;
//    h1 = 0xc1;
//    h2 = 0xc2;
//    h3 = 0xc3;
//    h4 = 0xc4;
//    h5 = 0xc5;
//    h6 = 0xc6;
//    h7 = 0xc7;
//    h1 = h2 + h3;
//    h2 = h3 + h4;
//}

