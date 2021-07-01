# -*- coding: utf-8 -*-
"""
Created on Tue May  7 08:31:53 2019

@author: bluesky_hust
"""

bestV=0
curW=0
curV=0
bestx=None
total=0

def backtrack(i):
    global bestV,curW,curV,bestx,total
    print("mycalled=",i)
    total+=1
    
    if i>=n:
        if bestV<curV:
            bestV=curV
            bestx=x[:]
            print("退出递归,i=",i)
    else:
        if curW+w[i]<=c:#进入左子树
            print('进入左子树,i=',i)
            #将物品放入背包中的状态
            x[i]=True
            curW+=w[i]
            curV+=v[i]
            #择下一个物品进行判断
            backtrack(i+1)
            print('i*=',i)
            print('curW=',curW)
            #将物品从背包中取出的状态，回退到结点A
            curW-=w[i]
            curV-=v[i]
        print('进入右子树,i=',i)
        x[i]=False
        backtrack(i+1)  #进入右子树

def backtrack2(i):
    global bestV,curW,curV,bestx,total
    #print("mycalled=",i)
    total+=1
    
    if i>=n:
        if bestV<curV:
            bestV=curV
            bestx=x[:]
            #print("退出递归,i=",i)
    else:
        if curW+w[i]<=c:#进入左子树
            #print('进入左子树,i=',i)
            #将物品放入背包中的状态
            x[i]=True
            curW+=w[i]
            curV+=v[i]
            #择下一个物品进行判断
            backtrack2(i+1)
            #print('i*=',i)
            #print('curW=',curW)
            #将物品从背包中取出的状态，回退到结点A
            curW-=w[i]
            curV-=v[i]
        b=bound(i+1)
        print("b=",b)
        print("bestV=",bestV)
        if  b >= bestV:
            #print('进入右子树,i=',i)
            x[i]=False
            backtrack2(i+1)  #进入右子树


def bound(i):
    print("bound=",i)
    global curW,curV
    leftw= c-curW
    b = curV
    while i<n and w[i]<=leftw:
        #print("w=",w[i])
        leftw-=w[i]
        b+=v[i]
        i+=1
    if i<n:
        b+=v[i]/w[i]*leftw
        #print("i*************=",i)
    return b

def bound2(i):
    print("bound=",i)
    global curW,curV
    leftw= c-curW
    b = curV

    if i<n:
        b+=v[i]/w[i]*leftw
    return b

def bound3(i):
    print("bound=",i)
    global curW,curV
    leftw= c-curW
    b = curV
    while i<n and w[i]<=leftw:
        leftw-=w[i]
        b+=v[i]
        i+=1

    return b

if __name__=='__main__':
    n=3
    c=30

    #w=[2,2,6,5,4]
    #v=[6,3,5,4,6]
    w=[16,15,15]
    v=[45,25,25]
    #w=[7,3,4,5]
    #v=[42,12,40,25]
    x=[False for i in range(n)]
    backtrack2(0)
    print(bestV)
    print(bestx)
    print("total=",total)
