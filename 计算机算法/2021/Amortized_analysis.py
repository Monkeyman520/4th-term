# -*- coding: utf-8 -*-
"""
Created on Tue Apr  2 22:00:26 2019

@author: bluesky_hust
"""

#计数器例子
def Increment(A):
    i=0
    while i<len(A) and A[i]==1 :
        A[i]=0
        i=i+1
    if i<len(A):
        A[i]=1


def Counter():
    n=8
    A=[0 for i in range(0, n)]
    print(A)
    for i in range (0,16):
        Increment(A)
        print(A)

#计数器例子

def main():
 
    Counter()
    
        
if __name__ == "__main__":
    main()