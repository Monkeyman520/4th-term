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

 

def chicken_question1():
    # x + y + z = 100
    # 5x + 3y + z/3 = 100
    iCount = 0
    for x in range(1, 20):
        for y in range(1, 33):
            for z in range(1,99):
                iCount = iCount + 1
                if z % 3 == 0 and 5 * x + 3 * y + z / 3 == 100 and x + y +z == 100:
                    print('公鸡：', x, '只', '母鸡：', y, '只', '小鸡：', z, '只') 
    print('iCount:',iCount)                    

def chicken_question2():
    # x + y + z = 100
    # 5x + 3y + z/3 = 100
    iCount = 0
    for x in range(1, 20):
        for y in range(1, 33):
            iCount = iCount + 1
            z = 100 - y - x
            if z % 3 == 0 and 5 * x + 3 * y + z / 3 == 100:
                print('公鸡：', x, '只', '母鸡：', y, '只', '小鸡：', z, '只')
    print('iCount:',iCount)


def main():
    
    print('method1')
    t1=time.time()
   
    chicken_question1()
  
    t2=time.time()
    
    print('time=',(t2-t1)) 
    
    print('method2')
    t1=time.time()
   
    chicken_question2()
  
    t2=time.time()
    
    print('time=',(t2-t1)) 
    
if __name__ == "__main__":
    main()