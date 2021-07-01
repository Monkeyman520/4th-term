# -*- coding: utf-8 -*-
"""
Created on Wed Mar 25 23:19:45 2020

@author: bluesky_hust
"""


def KMP(s,p):
    '''
    :param s: 原始字符串
    :param p: 需要匹配的字符串
    :return: 匹配的位置向量
    '''
    n = len(s)
    m = len(p)
    next_list = getNextList(p)
    res = []
    j = 0
    for i in range(n):
        while s[i] != p[j] and j > 0:
            j = next_list[j]
 
        if s[i] == p[j]:
            j += 1
            if j == m:
                res.append(i-m+1)
                j = next_list[j]
    return res


def getNextList(strs):
    n = len(strs)
    nextlist = [0,0]
    j=0
    for i in range(1,n):
        while j>0 and strs[i]!=strs[j]:
            j = nextlist[j]
        if strs[i] == strs[j]:
            j += 1
        nextlist.append(j)
    print(nextlist)
    return nextlist




 
if __name__ == "__main__":
    string = 'ababaababcb'
    substring = 'ababc'
    print(KMP(string,substring))
