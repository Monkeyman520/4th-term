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

 

#组合问题中的蛮力法—凸包问题1
def force1(point,n):
    
    lis=[]
    for i in range(0,n-1):
        print('i=',i)
        for j in range(i+1,n):
            print('j=',j)
            sign1=0
            sign2=0
            iCount=0
            a=point[i][1]-point[j][1]
            b=point[j][0]-point[i][0]
            c=point[i][0]*point[j][1]-point[j][0]*point[i][1]
            
            for k in range(0,n):
                if (k == i or k == j):
                    continue
                
                print('k=',k)
                if ((a*point[k][0] + b*point[k][1] + c) >0): 
                    sign1=1
                else:
                    sign2=1
                iCount=iCount+1
                if(sign1==sign2):
                    break
                
                if (iCount==n-2): 
                    if point[i] not in lis :
                        lis.append(point[i])
                    if point[j] not in lis :
                        lis.append(point[j])
            
    return lis

#组合问题中的蛮力法—凸包问题1


#组合问题中的蛮力法—凸包问题2
def generate_num(n):
    random_list = list(itertools.product(range(1, 1000), range(1, 1000)))
    lists=random.sample(random_list, n)
    print(lists)
    return  lists


#判断pi是否位于pj,pk,p0组成三角形内，返回t1,t2,t3三个变量
def isin(pi,pj,pk,p0):
    x1 = float(p0[0])
    x2 = float(pj[0])
    x3 = float(pi[0])
    x4 = float(pk[0])
    y1 = float(p0[1])
    y2 = float(pj[1])
    y3 = float(pi[1])
    y4 = float(pk[1])

    k_j0=0
    b_j0=0
    k_k0=0
    b_k0=0
    k_jk=0
    b_jk=0
    perpendicular1=False
    perpendicular2 = False
    perpendicular3 = False
    #pj,p0组成的直线，看pi,pk是否位于直线同一侧

    if x2 - x1 == 0:
    #pj,p0组成直线垂直于X轴时
        t1=(x3-x2)*(x4-x2)
        perpendicular1=True
    else:
        k_j0 = (y2 - y1) / (x2 - x1)
        b_j0 = y1 - k_j0 * x1
        t1 = (k_j0 * x3 - y3 + b_j0) * (k_j0 * x4 - y4 + b_j0)

    #pk,p0组成的直线，看pi,pj是否位于直线同一侧

    if x4 - x1 == 0:
    #pk,p0组成直线垂直于X轴时
        t2=(x3-x1)*(x2-x1)
        perpendicular2=True
    else:
        k_k0 = (y4 - y1) / (x4 - x1)
        b_k0 = y1 - k_k0 * x1
        t2 = (k_k0 * x3 - y3 + b_k0) * (k_k0 * x2 - y2 + b_k0)

    # pj,pk组成的直线，看pi,p0是否位于直线同一侧

    if x4 - x2 == 0:
    # pj,pk组成直线垂直于X轴时
        t3=(x3-x2)*(x1-x2)
        perpendicular3 = True
    else:
        k_jk = (y4 - y2) / (x4 - x2)
        b_jk = y2 - k_jk * x2
        t3 = (k_jk * x3 - y3 + b_jk) * (k_jk * x1 - y1 + b_jk)
    #如果pk，p0,pj，三点位于同一直线时，不能将点删除
    if (k_j0 * x4 - y4 + b_j0)==0 and (k_k0 * x2 - y2 + b_k0)==0 and  (k_jk * x1 - y1 + b_jk)==0 :
        t1=-1
    #如果pk，p0,pj，三点位于同一直线时且垂直于X轴，不能将点删除
    if perpendicular1 and perpendicular2 and perpendicular3:
        t1=-1

    return t1,t2,t3

def force2(lis,n):
    #集合S中点个数为3时，集合本身即为凸包集
    if n==3:
        return  lis
    else:
        #集合按纵坐标排序，找出y最小的点p0
        lis.sort(key=lambda x: x[1])
        p0=lis[0]
        #除去p0的其余点集合lis_brute
        lis_brute=lis[1:]
        #temp是用来存放集合需要删除的点在lis_brute内的索引，四个点中如果有一个点在其余三个点组成的三角形内部，则该点一定不是凸包上的点
        temp=[]
        #三重循环找到所有这样在三角形内的点
        for i in range(len(lis_brute)-2):
            pi=lis_brute[i]
            #如果索引i已经在temp中，即pi一定不是凸包上的点，跳过这次循环
            if i in temp:
                continue
            for j in range(i+1,len(lis_brute) - 1):
                pj=lis_brute[j]
                #如果索引j已经在temp中，即pj一定不是凸包上的点，跳过这次循环
                if j in temp:
                    continue
                for k in range(j + 1, len(lis_brute)):
                    pk=lis_brute[k]

                    #如果索引k已经在temp中，即pk一定不是凸包上的点，跳过这次循环
                    if k in temp:
                        continue
                    #判断pi是否在pj,pk,p0构成的三角形内
                    (it1,it2,it3)=isin(pi,pj,pk,p0)
                    if it1>=0 and it2>=0 and it3>=0:
                        if i not in temp:
                           temp.append(i)  
                    # 判断pj是否在pi,pk,p0构成的三角形内
                    (jt1,jt2,jt3)=isin(pj,pi,pk,p0)
                    if jt1>=0 and jt2>=0 and jt3>=0:

                        if j not in temp:
                           temp.append(j)

                    # 判断pk是否在pj,pi,p0构成的三角形内
                    (kt1, kt2, kt3) = isin(pk, pi, pj, p0)
                    if kt1 >= 0 and kt2 >= 0 and kt3 >= 0:

                        if k not in temp:
                            temp.append(k)
       #listlast是最终选出的凸包集合
        lislast=[]
        for coor in lis_brute:
            loc = [i for i, x in enumerate(lis_brute) if x == coor]
            for x in loc:
                ploc = x
            if ploc not in temp:
                lislast.append(coor)
        #将p0加入凸包集合
        lislast.append(p0)
        return  lislast


#组合问题中的蛮力法—凸包问题2


#组合问题中的蛮力法—凸包问题3


#组合问题中的蛮力法—凸包问题3

def main():
    

    t1=time.time() 
    
    #list=generate_num(10)
    list=[(998, 444), (391, 531), (589, 210), (862, 870), (705, 983), (875, 772), (383, 37), (893, 411), (235, 866), (47, 671)]
    lislast1=force1(list,10)
    print(lislast1)
    
    #lislast2=force2(list,10)
    #print(lislast2)
   
    
  
    t2=time.time()
    
    print('time=',(t2-t1)) 
    
if __name__ == "__main__":
    main()