# -*- coding: utf-8 -*-
"""
Created on Sun Apr 21 23:36:08 2019

@author: bluesky_hust
"""


def LCS_LENGTH1(X,Y): 
    m = len(X) 
    n = len(Y) 
    c = [[0 for i in range(n+1)] for j in range(m+1)]
    #print(c)
    b = [[0 for i in range(n+1)] for j in range(m+1)] 
    for i in range(m): 
        for j in range(n): 
            if X[i]==Y[j]: 
                c[i+1][j+1]=c[i][j]+1
                b[i+1][j+1]='x'
            elif c[i+1][j]>c[i][j+1]: 
                c[i+1][j+1]=c[i+1][j] 
                b[i+1][j+1]='l'
            else: 
                c[i+1][j+1]=c[i][j+1] 
                b[i+1][j+1]='u'
    return c,b 

def PRINT_LCS1(b,X,i,j): 
  if i == 0 or j == 0: 
    return
  if b[i][j] == 'x': 
    PRINT_LCS1(b,X,i-1,j-1) 
    print(X[i-1],end='') 
  elif b[i][j] == 'l': 
    PRINT_LCS1(b,X,i,j-1) 
  else: 
    PRINT_LCS1(b,X,i-1,j) 


  
def LCS_LENGTH2(X,Y): 
    m = len(X) 
    n = len(Y) 
    c = [[0 for i in range(n+1)] for j in range(m+1)]
    #print(c)
    b = [[0 for i in range(n+1)] for j in range(m+1)] 
    for i in range(1,m+1): 
        for j in range(1,n+1): 
            if X[i-1]==Y[j-1]: 
                c[i][j]=c[i-1][j-1]+1
                b[i][j]='x'
            elif c[i-1][j]>=c[i][j-1]: 
                c[i][j]=c[i-1][j] 
                b[i][j]='u'
            else: 
                c[i][j]=c[i][j-1] 
                b[i][j]='l'
    return c,b       

def PRINT_LCS2(b,X,i,j): 
  if i == 0 or j == 0: 
    return
  if b[i][j] == 'x': 
    PRINT_LCS2(b,X,i-1,j-1) 
    print(X[i-1],end='') 
  elif b[i][j] == 'u': 
    PRINT_LCS2(b,X,i-1,j) 
  else: 
    PRINT_LCS2(b,X,i,j-1)       

def main():
    X='ABCBDAB'
    Y='BDCABA'
    c,b=LCS_LENGTH2(X,Y) 
    for i in c: 
        print(i) 
    print('') 
    for j in b: 
        print(j) 
    print('') 
    PRINT_LCS2(b,X,len(X),len(Y)) 
    print('')

    
if __name__ == "__main__":
    main()