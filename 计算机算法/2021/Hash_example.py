# -*- coding: utf-8 -*-
"""
Created on Mon Mar 25 15:05:21 2019

@author: bluesky_hust
"""
import math
import collections
 
#开放寻址法-线性探查
class open_address_hash1:
    def __init__(self,T=[],size=0):
        if len(T)==0:
            self.T=[None for i in range(size)]
        else:
            self.T=T
        self.size=size
    def hash_insert(self,k):
        i=0     
        while i<self.size:
            j=self.hash_h1_h2(k,i)
            print('k=',k,'j=',j)
            if self.T[j] == None:
                self.T[j]=k
                return j
            else:
                i+=1
        return "hash table overflow"
 
    def hash_search(self,k):
        i=0
        j=self.hash_h1_h2(k,i)
        while self.T[j]!=None and i<self.size:
            j=self.hash_h1_h2(k,i)
            if self.T[j]==k:
                return j
            else:
                i+=1
        return None
 
    def hash_h1_h2(self,k,i):
        return (k%self.size+i)%self.size
    
#开放寻址法-线性探查


#开放寻址法-二次探查
class open_address_hash2:
    def __init__(self,T=[],size=0):
        if len(T)==0:
            self.T=[None for i in range(size)]
        else:
            self.T=T
        self.size=size
    def hash_insert(self,k):
        i=0     
        while i<self.size:
            j=self.hash_h1_h2(k,i)
            print('k=',k,'j=',j)
            if self.T[j] == None:
                self.T[j]=k
                return j
            else:
                i+=1
        return "hash table overflow"
 
    def hash_search(self,k):
        i=0
        j=self.hash_h1_h2(k,i)
        while self.T[j]!=None and i<self.size:
            j=self.hash_h1_h2(k,i)
            if self.T[j]==k:
                return j
            else:
                i+=1
        return None
 
    def hash_h1_h2(self,k,i):
        c1=2
        c2=3
        return int((k%self.size+c1*i+c2*math.pow(i,2))%self.size)
    
#开放寻址法-二次探查

#开放寻址法-双重散列
class open_address_hash3:
    def __init__(self,T=[],size=0):
        if len(T)==0:
            self.T=[None for i in range(size)]
        else:
            self.T=T
        self.size=size
    def hash_insert(self,k):
        i=0     
        while i<self.size:
            j=self.hash_h1_h2(k,i)
            print('k=',k,'j=',j)
            if self.T[j] == None:
                self.T[j]=k
                return j
            else:
                i+=1
        return "hash table overflow"
 
    def hash_search(self,k):
        i=0
        j=self.hash_h1_h2(k,i)
        while self.T[j]!=None and i<self.size:
            j=self.hash_h1_h2(k,i)
            if self.T[j]==k:
                return j
            else:
                i+=1
        return None
 
    def hash_h1_h2(self,k,i):
        return ((k%self.size+i*(1+k%(self.size-2))))%self.size
    
#开放寻址法-双重散列

 



def division_hash():
    a=int(0b1011000111011010)
    b=int(0b011010)
    p=6
    #a=int(0b10010100110011)
    #b=int(0b011)
    #r=3
    m=int(math.pow(2,p))
    
    print('a=',a)
    print('m=',m)
    c = a % m
    
    print('b=',b)
    print('c=',c)

def multiplication_hash():
    a=17612864
    #b=bin(a)   #0b1000011001100000001000000 最高位0没有现实
    b='{:032b}'.format(a)
    print(b)
    
    
    #c=int(0b00000001000011)
    c= a >> 18 #(保留最高14位，也就是右移18位)
    print(c)



def main():
   
     #multiplication_hash()
    #s="3aabcdeddeeeeeeeeee"
    #print(hash(s))
    
    
    T=[]
    oah=open_address_hash2(T,5)
    oah.hash_insert(79)
    oah.hash_insert(69)
    oah.hash_insert(98)
    oah.hash_insert(14)
    oah.hash_insert(50)
    temp=oah.hash_search(98)
    print(temp)
    
    #division_hash()
    
if __name__ == "__main__":
    main()