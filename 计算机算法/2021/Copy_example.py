# -*- coding: utf-8 -*-
"""
Created on Sat Mar 23 11:43:18 2019

@author: bluesky_hust
"""
import time
import copy

def example1():
    alist=[1,2,3,["a","b"]]
    b=alist
    print('b',b)
    alist.append(5)
    print('alist',alist)
    print('b',b)
    
    
def example2():
    alist=[1,2,3,["a","b"]]
    c=copy.copy(alist)
    print('c',c)
    alist.append(5)
    print('alist',alist)
    print('c',c)
    alist[3].append('cccc')
    print('alist',alist)
    print('c',c)
    
def example3():
    alist=[1,2,3,["a","b"]]    
    d=copy.deepcopy(alist)
    print('d',d)
    alist.append(5)
    print('alist',alist)
    print('d',d)
    alist[3].append('cccc')
    print('alist',alist)
    print('d',d)
    

def example4():
    alist=[7,2,3,5,1] 
    e=alist
    print('e',e)
    alist.sort()
    print('e',e)
    print('alist',alist)
    

def example5():
    alist=[7,2,3,5,1] 
    f=copy.copy(alist)
    print('f',f)
    alist.sort()
    print('f',f)
    print('alist',alist)

    


def main():
   
    t1=time.time()
       
    example5()
   
    
    t2=time.time()
    
    print('time=',(t2-t1))
    
    
if __name__ == "__main__":
    main()