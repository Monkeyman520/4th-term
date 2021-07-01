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

#分治法-峰值寻找算法-蛮力法
def Peak1D_simple(myList):
   
    index=-1
    for i in range(1,len(myList)-1):
        if myList[i-1] < myList[i] and  myList[i] >  myList[i+1]:
            index = m
            break
    
    return index
#分治法-峰值寻找算法-蛮力法

def Peak1D_DivideConqer(myList,i,j):
    
    m=math.floor((i+j)/2)
   # print('m=',m)
    if myList[m-1]<= myList[m] and  myList[m] >= myList[m+1]:
        return m
    elif myList[m-1]> myList[m]:
        return Peak1D_DivideConqer(myList,i,m-1)
    elif myList[m+1]> myList[m]:
        return Peak1D_DivideConqer(myList,m+1,j)



    
def main():
   
    t1=time.time()
    """
    myList=[9,7,6,5,3,7,4]
    i=0;
    j=len(myList)
    index=Peak1D_DivideConqer(myList,i,j)
    print('index=',index)
    """
    
    
    a=int(0b1011000111011010)
    print('a',a)
    b= a % 64
    print('b',b)
    c=int(0b011010)
    print('c',c)
  

   
     
    
   
    
    t2=time.time()
    
    print('time=',(t2-t1))
    
    
if __name__ == "__main__":
    main()