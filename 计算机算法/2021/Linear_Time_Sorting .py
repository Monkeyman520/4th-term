# -*- coding: utf-8 -*-
"""
Created on Sat Apr 13 22:06:10 2019

@author: bluesky_hust
"""
import random

from timeit import Timer

#计数排序
def countingSort(alist,k):
    n=len(alist)
    b=[0 for i in range(n)]
    c=[0 for i in range(k+1)]
    for i in alist:
        c[i]+=1
    for i in range(1,len(c)):
        c[i]=c[i-1]+c[i]
    for i in alist:
        b[c[i]-1]=i
        c[i]-=1
    return b

#基数排序
def radixSort(a):
    
    for k in range(4):  #4轮排序      
        s=[[] for i in range(10)]
        for i in a:
            s[int(i/(10**k)%10)].append(i)
        a=[a for b in s for a in b]
    return a


#桶排序
def bucketSort(a,max):
    #a 待排序list
    #数组中的最大值的范围
    if len(a) == 0 and max <1 :
        return 
    buckets = list() #建立容纳max个数的list
    for i in range(max):
        buckets.append(0) #初始化

    #计数
    for i in range(len(a)):
        buckets[a[i]] += 1

    #排序
    j = 0
    for i in range(max):
        while buckets[i] >0:
            buckets[i] -= 1
            a[j] = i
            j += 1

if __name__=='__main__':
    
    
    #计数排序调用
    '''
    a=[random.randint(0,100) for i in range(100)]
    print(a)
    print('*********************************')
    print(countingSort(a,100))
    '''
    
    #基数排序调用
    '''
    a=[random.randint(0,100) for i in range(100)]
    print(a)
    print('*********************************')
    print(radixSort(a))
    '''
    
    #桶排序调用
    a=[random.randint(0,100) for i in range(100)]
    print("排序前a:",a)
    bucketSort(a,101) #桶排序
    print("排序后a:",a)