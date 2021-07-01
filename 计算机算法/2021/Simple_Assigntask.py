# -*- coding: utf-8 -*-
"""
Created on Tue Nov 20 10:55:31 2018

@author: bluesky_hust
"""
import random
import numpy
import math
import time
import matplotlib.pyplot as plt
from itertools import combinations,permutations
import random
import itertools

 


#组合问题中的蛮力法—任务分配

def AssignTask(cost,task):
   
    value = []
    index=[]
    
    #调用全排列算法
    result=Permut(task)
  
    for i in range(0,len(result)):
        temp = 0
        for j in range(0,len(cost)):
            temp = temp + cost[j][result[i][j]]
        value.append(temp)
    
    maxValue=0
    for i in range(0,len(value)):
        if maxValue < value[i]:
            maxValue = value[i]
    
    for i in range(0,len(value)):
        if value[i] == maxValue:
            index.append([result[i],value[i]])
    
    return index           
     
#组合问题中的蛮力法—任务分配     


#全排列算法   字典序法 非递归
def Swap(n,a,b):
    n[a],n[b] = n[b],n[a]
    return None
def Reverse(n,begin):
    if len(n) > begin:
        i = begin
        j = len(n)-1
        while i < j:
            Swap(n,i,j)
            i += 1
            j -= 1
    return n

def FindMin(n,i):
    j = len(n)-1
    k = i + 1
    while j > i:
        if n[j] > n[i] and n[j] < n[k]:
            k = j
        j -= 1
    return k

#外界调用 n要求已经排好序
def Permut(n):
    result = []
    count = 0
    j = len(n) -1  
    if j < 1:
        return n
    else :
        #print(n)
        result.append(copy.copy(n))
        #print('result:',result)
        count += 1
        while j >= 1:
            i = j - 1
            if n[i] < n [j] :
                k = FindMin(n,i)
                Swap (n,i,k)
                Reverse (n,j)
                j = len(n) - 1
                count += 1
                #print(n)
                result.append(copy.copy(n))
                #('result:',result)
            else :
                j -= 1
           
    #print(count)
    return result

        
#全排列算法 字典序法 非递归


#全排列算法  递归
import copy    #实现list的深复制

def combine(lst, l):
    result = []
    tmp = [0]*l
    length = len(lst)
    def next_num(li=0, ni=0):
        if ni == l:
            result.append(copy.copy(tmp))
            return
        for lj in range(li,length):
            tmp[ni] = lst[lj]
            next_num(lj+1, ni+1)
    next_num()
    return result

def permutation(lst,k):
    result = []
    
    tmp = [0]*k
    def next_num(a,ni=0):
        if ni == k:
            result.append(copy.copy(tmp))
            return
        for lj in a:
            tmp[ni] = lj
            b = a[:]
            b.pop(a.index(lj))
            next_num(b,ni+1)
    c = lst[:]
    next_num(c,0)
    return result
#全排列算法  递归


def main():
    
    t1=time.time()

  
    cost=[[9,2,7],
          [6,4,3],
          [5,8,1]]
    task = [0,1,2]
    result=AssignTask(cost,task)
    print(result)
  
    t2=time.time()
    
    print('time=',(t2-t1)) 
    
if __name__ == "__main__":
    main()