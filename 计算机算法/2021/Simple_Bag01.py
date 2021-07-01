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

 

#组合问题中的蛮力法—0/1背包问题
#求一个集合的所有子集
def subset(weight_list):
    sub_list_all = []  # 用于存放集合所有的子集
    for i in range(1 << len(weight_list)):  # 循环遍历0到2**n之间的每个数
        print('i=',i)
        combo_list = []  # 用于存放每个单独的循环中取出的子集
        for j in range(len(weight_list)):
            print('j=',j)
            temp=i & (1 << j) #取出i的二进制中第j位的值
            print('temp=',temp)
            if temp:  # 每一个数用&操作判断改为上是否有1
                combo_list.append(weight_list[j])  # 有的话保存起来
        print(combo_list)
        sub_list_all.append(combo_list)    
    return sub_list_all

def bag_0_1(weight_list):

    total_weight=[]
    total_value=[]
    max_value=0
    max_weight=10
    
    sub_list_all=subset(weight_list)

    for i in range(0,len(sub_list_all)):
        weight=0
        value=0
    
        if len(sub_list_all[i]) > 0:
            print(sub_list_all[i])
            for j in range(0,len(sub_list_all[i])):
                weight=weight+sub_list_all[i][j][0]
                value=value+sub_list_all[i][j][1]
                if weight > max_weight :
                    weight=0
                    value=0
                    break
        total_weight.append(weight)
        total_value.append(value)
            
        
    print(total_weight)
    print(total_value)
    
    max_value=total_value[0]
    index=[]
    
    for i in range(1,len(total_value)):
        if max_value < total_value[i]:
            max_value = total_value[i]
    for i in range(0,len(total_value)):
        if total_value[i]== max_value:
            index.append(i)
    for i in range(0,len(index)):
        print(sub_list_all[index[i]])
        print(total_value[index[i]])
    

def main():
    
    t1=time.time()
   
  
    weight_list = [[7,42], [3,12], [4,40], [5,25]]
    bag_0_1(weight_list)
   
   
    t2=time.time()
    
    print('time=',(t2-t1)) 
    
if __name__ == "__main__":
    main()