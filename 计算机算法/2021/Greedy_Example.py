# -*- coding: utf-8 -*-
"""
Created on Tue Apr 30 14:55:39 2019

@author: bluesky_hust
"""
import copy

#二维数组例子
def TwoArray():
    n=5
    #lists = [[[]]*n]*n
    lists = [[[]for i in range(n)] for i in range(n)]
    #print(lists)
    lists[0][0].append(1)
    lists[0][0].append(2)
    lists[0][1].append(copy.deepcopy(lists[0][0]))
    lists[0][0].clear()
    #lists[0].append("b123")
    if len(lists[0][1])==0:
        print("none")
    
    for temp in lists:
        print(temp)  

def TwoArray2():
    n=5
    #lists = [[[]]*n]*n
    lists = [[[]for i in range(n)] for i in range(n)]
    #print(lists)
    lists[0][0].append(1)
    #lists[0][0].append(3)
   
    #lists[0][0].clear()
    #lists[0].append("b123")
    
    SetA(lists)
    for temp in lists:
        print(temp)  
def SetA(A):
    A[0][1].append(A[0][0])
    A[0][1].append(100)

def Test():
    n=5
    c=[[0]*(n+2) for _ in range(n+2)]

    for i in range(0,n+2):
        #print("i=",i)  
        for j in range(0,i+1):
            #print("j=",j)
            c[i][j]=0    
    c[0][1]=2
    for temp in c:
        print(temp)    
       
def main():
    TwoArray2()
    #Test()

if __name__ == "__main__":
    main()