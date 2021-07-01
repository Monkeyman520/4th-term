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

 

 


#蛮力法—选择排序算法
# select_sort
def SelectSort(s):
    for i in range(0, len(s) - 1):
        index = i
        for j in range(i + 1, len(s)):
            if s[index] > s[j]:
                index = j
        s[i], s[index] = s[index], s[i]

    #print(s)
    return s
#蛮力法—选择排序算法    

#蛮力法-起泡排序算法
#start of bubbleSort
def bubbleSort(myList):
    #首先获取list的总长度,为之后的循环比较作准备
    length = len(myList)
    
    print(myList)
    print("*****************************************************")
    #一共进行几轮列表比较,一共是(length-1)轮
    for i in range(0,length-1):
        
        #每一轮的比较,注意range的变化,这里需要进行length-1-长的比较,注意-i的意义(可以减少比较已经排好序的元素)
        for j in range(0,length-1-i):
            
            #交换
            if myList[j] > myList[j+1]:
                tmp = myList[j]
                myList[j]=myList[j+1]
                myList[j+1] = tmp
                
        #打印每一轮交换后的列表       
        print(myList)
        print("----------------------------------------------------")
#end of bubbleSort
#蛮力法-起泡排序算法



def main():
    
    t1=time.time()
  

    s = [3, 4, 1, 6, 2, 9, 7, 0, 8, 5]
    SelectSort(s)
   
    
    """
    myList=[20,10,30,15,90,75,84,23,100,1,120,55]
    bubbleSort(myList)
    """
    
   
    t2=time.time()
    
    print('time=',(t2-t1)) 
    
if __name__ == "__main__":
    main()