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


    
    
#分治法-最近点对问题 2   

par=[]
mi=float("inf")
def eudis(x,y):
    global par
    h=math.sqrt((x[0]-y[0])**2+(x[1]-y[1])**2)
    if h<mi:
        par=[]
        par.append(x)
        par.append(y)
    return h
        
def combine(l1,l2,alpha):
    x=float("inf")
    mini=l1[-1][0]-alpha
    maxi=l1[-1][0]+alpha
    for i in l1:
        if (mini<i[0]<maxi):
            for j in l2:
                if ((mini<j[0]<maxi)and abs(i[1]-j[1])<alpha):
                    x=min(x,eudis(i,j))
    return x
    
def divide(a):
    global mi
    if (len(a)==2):
        return eudis(a[0],a[1])
    if (len(a)<2):
        return float("inf")
    else:
        i=int(len(a)/2)
        left = a[0:i]
        right = a[i:]
        s1=divide(left)
        s2=divide(right)
        s3=combine(left,right,mi)
        s=min(s1,s2,s3)
        mi=min(s,mi)
        return mi



#分治法-最近点对问题2     

#分治法-最近点对问题3 
"""
1. 预处理：创建结构体Node附带属性x,y表示在平面坐标系中的位置，由Node构成点集S，
任一Node就是点集S中的点，生成点时要保证任意两点不重复。
2. 点数较少时的情形(点数为1返回无穷大，点数为2直接计算返回距离，
本实现方法不允许在三个点时也直接计算，两个点以上时必须再均分)。
"""


def get_distance(a, b):
    # print(a,b)
    distance = math.sqrt((a[0]-b[0])**2+(a[1]-b[1])**2)
    if distance in buff:
        buff[distance].append((a, b))
    else:
        buff[distance] = [(a, b)]
    return distance
 
 
def judge_minimum(temp):
    global minimum
    global buff
    if temp not in buff:
        return minimum
    if minimum < temp:
        pass
    elif minimum == temp:
        for i in range(0, len(buff[temp])):
            closest_pair[minimum].append(buff[temp][i])
    else:
        minimum = temp
        closest_pair.clear()
        closest_pair[temp] = buff[temp][:]
    return minimum
 
 
def min_between(point, left, mid, right, minimum):
    global buff, closest_pair
    for i in range(left, mid):
        if abs(point[i][0]-point[mid][0]) <= minimum: #找出P1集合
            for j in range(mid, right):
                if abs(point[i][0]-point[j][0]) <= minimum and abs(point[i][1]-point[j][1]) <= minimum:
                    get_distance(point[i], point[j])
    if len(buff) > 0:
        #print('buff1:',buff)
        buff = sorted(buff.items(), key=lambda buff: buff[0])
        #print('buff2:',buff)
        temp = buff[0][0]
        buff = dict(buff)
        #print('buff3:',buff)
    else:
        temp = float("inf")
    return temp
 
 
def divide_conquer(point, left, right):
    global minimum, buff,iCount
    # right不包括
    iCount = iCount + 1
    #print('iCount=',iCount,'left=',left,'right=',right)
    
    if right-left < 2:      #点数为1时输出无穷大(0,1) 表示0点，(1,3)表示1和2点
        return float('inf') 
    elif right-left == 2:   #点数为2直接输出点距同时记录点对
        return get_distance(point[left], point[left+1])
    else:
        mid = int((left+right)/2)
        #print('mid=',mid)
        min_left = divide_conquer(point, left, mid)
        #print("min_left:",min_left)
        minimum = judge_minimum(min_left)
        buff.clear()
 
        min_right = divide_conquer(point, mid, right)
        #print("min_right",min_right)
        minimum = judge_minimum(min_right)
        buff.clear()
 
        temp = min_between(point, left, mid, right, minimum)
        #print("temp",temp)
        minimum = judge_minimum(temp)
        buff.clear()
 
        return min(min_left, min_right, temp)

def divide2(point,n):
    #print(point)
    #print("\n\n\n")
 
    point.sort()
    #print(point)
    
    
    plt.xlim(0, 30*n)
    plt.ylim(0, 30*n)
    plt.title("Point Pair")
    for i in range(len(point)):
        plt.plot(point[i][0], point[i][1], 'ro-')    
   
    divide_conquer(point, 0, len(point))
     
    print("\n\n\n"+"The Closest Pair is:",
    closest_pair[minimum], "Distance:", minimum)
    for i in range(0, len(closest_pair[minimum])):
        plt.plot(closest_pair[minimum][i][0][0],closest_pair[minimum][i][0][1], "bo-")
        plt.plot(closest_pair[minimum][i][1][0],closest_pair[minimum][i][1][1], "bo-")
    plt.show()      
    
#分治法-最近点对问题3
    
def main():
   
    t1=time.time()
  

 
    
   
    #a=[(10*random.random(), 10*random.random()) for i in range(0,10)]
    n=100
    #point=[(0,30),(30,20),(40,180),(50,90),(10,220),(20,110),(60,25),(70,120),(80,150),(40,50),(90,0),(60,240)]
    # 随机生成n个坐标
    point=[(random.randint(0, 30*n), random.randint(0, 30*n)) for i in range(0,10)]
   
   # print(a)
    point.sort()
    print(point)
    print(divide(point))
  
  
    #divide2(point,len(point))
    
    t2=time.time()
    
    print('time=',(t2-t1))
    
    
if __name__ == "__main__":
    main()