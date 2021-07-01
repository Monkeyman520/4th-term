# -*- coding: utf-8 -*-
"""
Created on Tue May  7 09:11:57 2019

@author: bluesky_hust
"""

global N  # 皇后个数
# global x  # 当前解  list类型不需要声明为全局变量！
global SUM  # 当前已找到的可行方案数
N = 8
# x = [0 for i in range(N)]
SUM = 0

def print_solution(x):
    for i in range(len(x)):
        print(x[i], end="")
    print()


def is_safe(k):
    for i in range(k):
        if x[i] == x[k]:
            return False
        if (x[i] - x[k]) == (i - k):
            return False
        if (x[i] - x[k]) == (k - i):
            return False
    return True


def backtrack(t):
    if t >= N:
        global SUM  # 若希望在局部函数中修改全局变量，则需要先声明，否则会把SUM作为局部变量处理
        SUM += 1
        print_solution(x)
    else:
        for i in range(N):
            x[t] = i
            if is_safe(t):
                backtrack(t + 1)


if __name__ == "__main__":
    x = [0 for i in range(N)]
    backtrack(0)
    print("sum =" + str(SUM))
