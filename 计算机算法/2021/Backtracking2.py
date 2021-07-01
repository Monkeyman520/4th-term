# -*- coding: utf-8 -*-
"""
Created on Tue May 14 00:50:50 2019

@author: bluesky_hust
"""
#排列树
def constraint():
    # 约束函数
    return True


def bound():
    # 限界函数
    return True


def backtracing(t, lst):
    # 回溯法函数
    size = len(lst)
    if t == size:
        print(lst)
    else:
        for i in range(t, size):
            (A[t], A[i]) = (A[i], A[t])  # 交换第i个
            if constraint() and bound():
                backtracing(t+1, lst)
            (A[t], A[i]) = (A[i], A[t])


if __name__ == '__main__':
    A = ['A', 'B', 'C']
    backtracing(0, A)
