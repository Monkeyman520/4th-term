#蛮力法求解最近点对问题

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

 



def nearest_dot(point,n):
    # 暴力求解最近点对问题
    
    buff = {}
    minimum = float("inf")
    closest_pair = {}
    # 存最后结果
  
    #print(point)
    #print("\n\n\n")
 
    point.sort()
    #print(point)
 
    plt.xlim(0, 30*n)
    plt.ylim(0, 30*n)
    plt.title("Point Pair")
    for i in range(len(point)):
        plt.plot(point[i][0], point[i][1], 'ro-')
    
    # 暴力找最小
    for i in range(0, n-1):
        for j in range(i+1, n):
            distance = math.sqrt((point[i][0]-point[j][0])**2+(point[i][1]-point[j][1])**2)
            if distance in buff:
                buff[distance].append((point[i], point[j]))
            else:
                buff[distance] = [(point[i], point[j])]
            
            if distance < minimum:
                minimum = distance
                         
    closest_pair[minimum] = buff[minimum][:]
    # 最后结果存入closest_pair中
    print("\n\n\n"+"The Closest Pair is:",
          closest_pair[minimum], "	Distance:", minimum)
 
    for i in range(0, len(closest_pair[minimum])):
        plt.plot(closest_pair[minimum][i][0][0],closest_pair[minimum][i][0][1], "bo-")
        plt.plot(closest_pair[minimum][i][1][0],closest_pair[minimum][i][1][1], "bo-")
    plt.show()
 
def main():
    
    t1=time.time()
    
    #point=[(0,30),(30,20),(40,180),(50,90),(10,220),(20,110),(60,25),(70,120),(80,150),(40,50),(90,0),(60,240)]
    #point=[(0,10),(30,20),(40,30),(50,10),(10,20),(20,10),(60,20),(70,20),(80,30),(40,50),(90,0),(60,40)]
    # 随机生成n个坐标
    n=100
    point = [(random.randint(0, 30*n), random.randint(0, 30*n)) for i in range(0, n)]
    #point=[(0,30),(30,20),(40,180),(50,90),(10,220),(20,110),(60,25),(70,120),(80,150)
    
    nearest_dot(point,n)
  
 
    t2=time.time()
    
    print('time=',(t2-t1)) 
    
if __name__ == "__main__":
    main()