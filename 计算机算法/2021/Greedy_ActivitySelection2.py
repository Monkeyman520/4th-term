# -*- coding: utf-8 -*-
"""
Created on Wed May  1 09:13:06 2019

@author: bluesky_hust
"""
n = 11; 
result=[False for i in range(n+1)]
    
def Recursive_Activity_Selector(s,f,k,n):
    print('k=',k)
    m=k+1
    while m<=n and s[m]<f[k]:
        m=m+1
        print('enter into,m=',m)
    if m<=n:
        result[m]=True
        Recursive_Activity_Selector(s,f,m,n)
        
    return result

def show(result):
	length=len(result)
	print('安排的活动为：')
	count=0
	for i in range(length):
		if result[i]:
			print('第',i,'个活动')
			count+=1
	print('\n共计',count,'个活动')

def main():
 
    s = [0,1,3,0,5,3,5, 6, 8, 8, 2,12]  
    f = [0,4,5,6,7,9,9,10,11,12,14,16]  
    Res=Recursive_Activity_Selector(s,f,0,n)
    show(Res)

if __name__ == "__main__":
    main()