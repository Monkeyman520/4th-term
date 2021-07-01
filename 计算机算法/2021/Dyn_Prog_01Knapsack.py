# -*- coding: utf-8 -*-
"""
Created on Mon Apr 22 23:37:48 2019

@author: bluesky_hust
"""
W=8
s=[2,3,4,5]
val=[3,4,5,6]
item=[0,0,0,0]
n=len(s)
V = [[0 for x in range(W+1)] for x in range(n+1)]

def BagValue():
    for i in range(n+1):
        for j in range(W+1):
            if i==0 or j==0:
                V[i][j] = 0
            elif s[i-1] <= j:
                V[i][j] = max(val[i-1] +V[i-1][j-s[i-1]],  V[i-1][j])
            else:
                V[i][j] = V[i-1][j]


def FindWhat(i,j):
    if i>0 :
        if V[i][j]==V[i-1][j]:
            item[i-1]=0 #全局变量，标记未被选中
            FindWhat(i-1,j)
            
        elif j-s[i-1]>=0 and V[i][j]==V[i-1][j-s[i-1]]+val[i-1] :
            item[i-1]=1;#标记已被选中
            FindWhat(i-1,j-s[i-1]);#回到装包之前的位置

def main():    

    BagValue()
    for i in V: 
        print(i) 
   
    FindWhat(n,int(W))
    print('item:',item)
    
if __name__ == "__main__":
    main()