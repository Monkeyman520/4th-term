#include <stdio.h>

int func_4(int a, int b, int c)
{
    int temp = a - b;
    if (temp < 0)
    {
        temp -= 1;
    }
    temp = temp / 2;
    if ((temp + b) > c)
    {
        int temp2=func_4(temp - 1, b, c);
        temp+=temp2;
        return temp;
    }
    else if (temp < c)
    {
        int temp2=func_4(c, temp + 1, a);
        temp+=temp2;
        return temp;
    }
    else
    {
        return temp + c;
    }
}

int main()
{
    int i = 0;
    for (i; i <= 14; i++)
    {
        printf("%d,%d", i, func_4(i, 0, 14));
    }
    // printf("%d,%d", 8, func_4(8, 0, 14));
    return 0;
}