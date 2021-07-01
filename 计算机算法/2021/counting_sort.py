# -*- coding: utf-8 -*-
"""
Created on Wed Apr 15 11:29:21 2020

@author: bluesky_hust
"""

def su_counting_algorithm(A,B,k):
    C=list(range(k+1))
    for i in range(0,k+1):
        C[i]=0
    for j in range(0,len(A)):
        C[A[j]]=C[A[j]]+1
    for i in range(1,k+1):
        C[i]=C[i]+C[i-1]
    for j in reversed(range(0,len(A))):
        B[C[A[j]]-1]=A[j]
        C[A[j]]=C[A[j]]-1
    return B

if __name__ == '__main__': 
    A=[2,5,3,0,2,3,0,3]
    B=list(range(len(A)))
    print(A)
    print(su_counting_algorithm(A,B,5))