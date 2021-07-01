# -*- coding: utf-8 -*-
"""
Created on Wed May  1 10:03:59 2019

@author: bluesky_hust
"""

def Iteration_Activity_Selector(s,f,n):
    result=[False for i in range(n+1)]
    result[1]=True
    k=1
    for m in range(2,n+1):
        if s[m]>=f[k]:
            result[m]=True
            k=m
    return result

def show(result):
    length=len(result)
    print('安排的活动为：')
    count=0
    for i in range(length):
        if result[i]:
            print('第',i,'个活动')
            count+=1
    print('\n共计',count,'个活动')

def main():
    n=11
    s = [0,1,3,0,5,3,5, 6, 8, 8, 2,12]  
    f = [0,4,5,6,7,9,9,10,11,12,14,16]  
    Res=Iteration_Activity_Selector(s,f,n)
    show(Res)

if __name__ == "__main__":
    main()