ww# -*- coding: utf-8 -*-
"""
Created on Sun Apr 21 13:57:00 2019

@author: bluesky_hust
"""

import numpy as np
def DataTower1(data):
    maxAdd = np.zeros(np.array(data).shape) #初始化
    path = np.zeros(np.array(data).shape) #初始化
    n,m = np.array(data).shape #n为行数，在这里相当于塔数
    #下面这个循环相当于把data的最后一行付给了maxAdd的最后一行，就是从最后一行向上递归
    for i in range(n):
        maxAdd[n-1][i] = data[n-1][i]  
    print(maxAdd)
    for i in range(n-2,-1,-1):   #进行第i层的决策
        #填写addMax[i][j],只填写下三角
        for j in range(i+1):
            if maxAdd[i+1][j] > maxAdd[i+1][j+1] :
                maxAdd[i][j] = data[i][j] + maxAdd[i+1][j]     
                path[i][j] = j  #本次决策选择下标j的元素          
            else :
                maxAdd[i][j] = data[i][j] + maxAdd[i+1][j+1]     
                path[i][j] = j + 1   #本次决策选择下标j+1的元素
    print('path:%d'%data[0][0])  #输出顶层数字
    j=int(path[0][0])  #顶层决策试选择下一层列下标伪path[0][0]的元素
    for i in range(1,n):
        print('-> %d'%data[i][j])
        j=int(path[i][j])   #本层决策试选择下一层列下标伪path[i]][j]的元素
    return maxAdd[0][0]

def DataTower2(data):
    maxAdd = np.zeros(np.array(data).shape) #初始化
    path = np.zeros(np.array(data).shape) #初始化
    n,m = np.array(data).shape #n为行数，在这里相当于塔数
    #下面这个循环相当于把data的最后一行付给了maxAdd的最后一行，就是从最后一行向上递归
    for i in range(n):
        maxAdd[n-1][i] = abs(data[n-1][i])  
    print(maxAdd)
    for i in range(n-2,-1,-1):   #进行第i层的决策
        #填写addMax[i][j],只填写下三角
        for j in range(i+1):
            if maxAdd[i+1][j] > maxAdd[i+1][j+1] :
                maxAdd[i][j] = abs(data[i][j]) + maxAdd[i+1][j]   
                path[i][j] = j  #本次决策选择下标j的元素          
            else :
                maxAdd[i][j] = abs(data[i][j]) + maxAdd[i+1][j+1]    
                path[i][j] = j + 1   #本次决策选择下标j+1的元素
    print('path:%d'%data[0][0])  #输出顶层数字
    j=int(path[0][0])  #顶层决策试选择下一层列下标伪path[0][0]的元素
    for i in range(1,n):
        print('-> %d'%data[i][j])
        j=int(path[i][j])   #本层决策试选择下一层列下标伪path[i]][j]的元素
    return maxAdd[0][0]

def DataTower3(data):
    maxAdd = np.zeros(np.array(data).shape) #初始化
    path = np.zeros(np.array(data).shape) #初始化
    n,m = np.array(data).shape #n为行数，在这里相当于塔数
    #下面这个循环相当于把data的最后一行付给了maxAdd的最后一行，就是从最后一行向上递归
    for i in range(n):
        maxAdd[n-1][i] = abs(data[n-1][i])  
    print(maxAdd)
    for i in range(n-2,-1,-1):   #进行第i层的决策
        #填写addMax[i][j],只填写下三角
        for j in range(i+1):
            if maxAdd[i+1][j] > maxAdd[i+1][j+1] :
                maxAdd[i][j] = abs(abs(data[i][j]) + maxAdd[i+1][j])   
                path[i][j] = j  #本次决策选择下标j的元素          
            else :
                maxAdd[i][j] = abs(abs(data[i][j]) + maxAdd[i+1][j+1])    
                path[i][j] = j + 1   #本次决策选择下标j+1的元素
    print('path:%d'%data[0][0])  #输出顶层数字
    j=int(path[0][0])  #顶层决策试选择下一层列下标伪path[0][0]的元素
    for i in range(1,n):
        print('-> %d'%data[i][j])
        j=int(path[i][j])   #本层决策试选择下一层列下标伪path[i]][j]的元素
    return maxAdd[0][0]


def main():
    
    data1 = [[8,0,0,0,0],[12,15,0,0,0],[3,9,6,0,0],[8,10,5,12,0],[16,4,18,10,9]]
    data2 = [[-8,0,0,0,0],[-12,-15,0,0,0],[-3,-9,-6,0,0],[-8,-10,-5,-12,0],[-16,-4,-18,-10,-9]]
    data3 = [[-100,0,0,0,0],[-1,15,0,0,0],[-1,9,6,0,0],[-1,10,5,12,0],[-1,4,-18,10,9]]
    
    #maxvalue=DataTower1(data1)
    maxvalue=DataTower1(data3)
    print('最大值：%d'%maxvalue)
    #DataTower2(data)
    
    
if __name__ == "__main__":
    main()