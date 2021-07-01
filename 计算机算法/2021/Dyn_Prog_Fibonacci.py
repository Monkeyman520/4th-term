# -*- coding: utf-8 -*-
"""
Created on Sat Apr 20 22:58:22 2019

@author: bluesky_hust
"""
import time

def fib_rec(n):
    if n <= 1:
        f=n
    else:
        f=fib_rec(n-1)+fib_rec(n-2)
    return f


memo = {}                           
def fib2(n): 
    if n in memo:                     # 查表
        return memo[n]
    else:
        if n <= 1:                    # 边界条件
            f = n
        else:
            f = fib2(n-1) + fib2(n-2) # 递归调用
        memo[n] = f                   # 将结果存储于表中
        return f
                          
def fib_bottom_up(n): 
    fib = {}                          # 存储结果的字典
    for k in range(n+1):
        if k<=2:                      # 边界条件
            f = 1
        else:
            f = fib[k-1]+fib[k-2]     # 自底向上填表
        fib[k] = f
    return fib[n]


def main():
    num = 10
    t1=time.clock()
    print('{0:5}==>{1:10d}'.format('fib('+str(num)+')', fib_rec(num)))
    #print('{0:5}==>{1:10d}'.format('fib2('+str(num)+')', fib2(num)))
   # print('{0:5}==>{1:10d}'.format('fib_bottom_up('+str(num)+')', fib_bottom_up(num)))
    t2=time.clock()
    print('t2-t1',t2-t1)
    
if __name__ == "__main__":
    main()