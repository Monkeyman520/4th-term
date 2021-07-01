# -*- coding: utf-8 -*-
"""
Created on Wed Mar 25 20:43:21 2020

@author: bluesky_hust
"""

def searchIndex(S, T):
    s, t, pos = 0, 0, 0
    S_len = len(S)
    T_len = len(T)

    while (s < S_len and t < T_len):
        print(s, t)
        if S[s] == T[t]:
            s += 1
            t += 1
        else:
            pos += 1
            s = pos
            t = 0
            
    if t == T_len:
        return pos
    else:
        return -1
        

if __name__ == '__main__':
    print(searchIndex("abcabcacb", "abcac"))


