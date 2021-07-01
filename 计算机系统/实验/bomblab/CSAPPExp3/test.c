#include <stdio.h>

int func_4(int c, int b, int a)
{
    int tmp1 = a - b;
    if (tmp1 < 0)
    {
        tmp1 += 1;
    }
    tmp1 = tmp1 / 2;
    int tmp2 = tmp1 + b;
    if (tmp2 > c)
    {
        int tmp3 = func_4(c, b, tmp2 - 1);
        tmp2 += tmp3;
        return tmp2;
    }
    else
    {
        if (tmp2 == c)
        {
            return tmp2;
        }
        int tmp3 = func_4(c, tmp2 + 1, a);
        tmp2 += tmp3;
        return tmp2;
    }
}

int main()
{
    int i = 0;
    for (i; i <= 14; i++)
    {
        printf("%d,%d\n", i, func_4(i, 0, 14));
    }
    // printf("%d,%d", 8, func_4(8, 0, 14));
    return 0;
}