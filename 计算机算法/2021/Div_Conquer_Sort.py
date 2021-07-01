# -*- coding: utf-8 -*-
"""
Created on Fri Mar  1 22:58:30 2019

@author: bluesky_hust
"""
import math
import random
import sys
from math import sqrt


import numpy

import time
import matplotlib.pyplot as plt

tile = 0

buff = {}
minimum = float("inf")
closest_pair = {}
iCount = 0

def mycmp1(x,y):  #升序排列
    value=0;
    if x>y :
        value=1
    if x<y:
        value=-1
    if x==y :
        value=0
    return value



#分治法-归并排序
def Combine(myList,left,right):
    mid = int((right - left)/2 + left)
    temp = []
    i = left
    j = mid + 1
    while i < mid+1 and j < right+1:
        if myList[i] > myList[j]:
            temp.append(myList[j])
            j+=1
        else:
            temp.append(myList[i])
            i+=1
    while i < mid + 1:
        temp.append(myList[i])
        i += 1
    while j < right+1:
        temp.append(myList[j])
        j += 1
    mm = 0
    for tt in range(left,right+1):
        myList[tt] = temp[mm]
        mm += 1
 
def MergeSort(myList,left,right):
    if right - left<1:
        return 0
    else:
        mid = int((right - left)/2 + left)
        MergeSort(myList,left,mid)
        MergeSort(myList,mid+1,right)
        Combine(myList,left,right)

#分治法-归并排序


#分治法-快速排序

def QuickSort(myList,p,r):
    if p < r:
        q = Partition(myList, p, r)
        QuickSort(myList, p, q - 1)
        QuickSort(myList, q + 1, r)
    
def Partition(myList, p,r):
    x = myList[r]
    i = p - 1
    for j in range(p,r):
        print('@@','p=',p,'r=',r,'i=',i,'j=',j)
        print('@@',myList)
        if myList[j] <= x:
            i += 1
            print('$$','i=',i)
            myList[i], myList[j] = myList[j], myList[i]
            print('$$',myList)
    myList[i + 1], myList[r] = myList[r], myList[i+1]
    print('**','i=',i)
    print('**',myList)
    return i + 1
   
        
#分治法-快速排序
    


    
def main():
   
    t1=time.time()
  
 
    """
    n=100
    #myList = [(random.randint(0, 30*n)) for i in range(0, n)]
    myList=[2,8,7,1,3,5,6,4]
    #myList=[-2,6,88,0,-4,56]
    for i in myList:
        print(i ,end = " ")
    
    print('\n')
    left = 0
    right = len(myList) - 1
    MergeSort(myList,left,right)
    print('*************************************')
    for i in myList:
        print(i ,end = " ")
    """
    
   
    n=100
    #myList = [(random.randint(0, 30*n)) for i in range(0, n)]
    myList=[2,8,7,1,3,5,6,4]
    #myList=[48,15,24,59,64,79,97,40]
   # myList=[72,6,57,88,60,42,83,73,48,85]
    #for i in myList:
    #    print(i ,end = " ")
    
    #print('\n')
    left = 0
    right = len(myList)-1
    QuickSort(myList,left,right)
   # print('*************************************')
    for i in myList:
        print(i ,end = " ")    
    
    
  
    
    t2=time.time()
    
    print('time=',(t2-t1))
    
    
if __name__ == "__main__":
    main()