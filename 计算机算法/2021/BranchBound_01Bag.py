# -*- coding: utf-8 -*-
"""
Created on Sat May 11 01:24:21 2019

@author: bluesky_hust
"""

#coding : utf-8
import numpy as np
import queue
import math
w = [4,7,5,3]#weight
v = [40,42,25,12]#value
def test(capacity):
    vec_len = 2**(len(v)+1) - 1#tree `s size
    vec_v = np.zeros(vec_len)
    vec_w = np.zeros(vec_len)
    vec_w[0]=capacity
    que = queue.Queue()
    que.put(0)
    best = 0
    while(not que.empty()):
        current = que.get()
        level = int(math.log(current+1,2))
        if(vec_v[current] > vec_v[best]):
            best = current
 
        left = 2*current+1#left child   index
        right = 2*current+2#right child index
 
        if(left < vec_len and vec_w[current]-w[level] > 0 and vec_v[current]+v[level] > vec_v[best] ):
            vec_v[left] = int(vec_v[current]+v[level])
            vec_w[left] = vec_w[current]-w[level]
            que.put(left)
        if(right < vec_len and sum(v[level+1:-1])+vec_v[current] > vec_v[best]):
            vec_v[right] = vec_v[current]
            vec_w[right] = vec_w[current]
            que.put(right)
    print( vec_w[best],vec_v[best])
 
if  __name__ == '__main__':
    test(10)
