# -*- coding: utf-8 -*-
"""
Created on Tue Apr 30 17:42:01 2019

@author: bluesky_hust
"""
import sys

#辅助方法，用来合并集合 A[i][j] = A[i][k] ∪ k ∪ A[k][j]
def ResetDynmaicSetA_i_j(A, i, j, k):
    A[i][j].clear()
    if len(A[i][k])!=0:
          for entry in A[i][k]:
              A[i][j].append(entry)
                
    A[i][j].append(k)
    if len(A[k][j])!=0:
          for entry in A[k][j]:
              A[i][j].append(entry)
          

def SelectActivity(s, f, n):
    s[0]=0
    f[0]=0
    s[n+1]=sys.maxsize
    f[n+1]=sys.maxsize
    c=[[0]*(n+2) for _ in range(n+2)]
    A=[[[]for i in range(n+2)] for i in range(n+2)]
    
    for i in range(0,n+2):
        #print("i=",i)  
        for j in range(0,i+1):
            #print("j=",j)
            c[i][j]=0
            #A[i][j].append("empty")
    #for temp in c:
        #print(temp)  
    
    for t in range(1,n+2):
        #print("t=",t)
        for i in range(0,(n-t+2)):
            j=i+t
           # print("i=",i)
            #print("j=",j)
            if f[i]>=s[j]:
                c[i][j] = 0
                A[i][j].clear()
                #A[i][j].append(None)
                #A[i][j].append("empty")
            else:
                for k in range(i+1,j):
                    #print("k=",k)
                    if (f[i] <= s[k] and f[k] <= s[j]):
                        if (c[i][j] < c[i][k] + 1 + c[k][j]):
                            c[i][j] = c[i][k] + 1 + c[k][j]
                            ResetDynmaicSetA_i_j(A,i,j,k)
    for temp1 in c:
        print(temp1)
    print("**********************************************")
    for temp2 in A:
        print(temp2)  
    print(c[0][n+1])
    print(A[0][n+1])     

def main():
    n = 11;  
    s = [0,1,3,0,5,3,5, 6, 8, 8, 2,12,0]  
    f = [0,4,5,6,7,9,9,10,11,12,14,16,0]  
    SelectActivity(s,f,n);     

    
if __name__ == "__main__":
    main()