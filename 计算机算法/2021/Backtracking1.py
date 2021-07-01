# -*- coding: utf-8 -*-
"""
Created on Tue May 14 00:43:04 2019

@author: bluesky_hust
"""
#子集树
def constraint():
    # 约束函数
    return True


def bound():
    # 限界函数
    return True


def backtracing(t, lst, temp):
    # 回溯法函数
    size = len(lst)
    if t == size:
        print(temp)
    else:
        for i in range(0, size):
            temp[t] = lst[i]
            if constraint() and bound():
                backtracing(t+1, lst, temp)  # 递归


if __name__ == '__main__':
    A = ['A', 'B', 'C']
    B = ['A', 'B', 'C']
    backtracing(0, A, B)
