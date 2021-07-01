# -*- coding: utf-8 -*-
"""
Created on Tue Apr 30 17:01:07 2019

@author: bluesky_hust
"""

def greedyManage(meeting):
	length=len(meeting)
	meeting.sort(key=lambda x:x[1])
	result=[False for i in range(length)]
	j=0 #当前选中的活动
	result[j]=True #选中第一个活动
	for i in range(1,length):
		if meeting[i][0]>=meeting[j][1]:
			j=i
			result[j]=True
	return result
 
def show(result):
	length=len(result)
	print('安排的活动为：')
	count=0
	for i in range(length):
		if result[i]:
			print('第',i+1,'个活动')
			count+=1
	print('\n共计',count,'个活动')
 

def main():
    meetings=[(1,4),(3,5),(0,6),(5,7),(3,9),(5,9),(6,10),(8,11),(8,12),(2,14),(12,14)]
    res=greedyManage(meetings)
    show(res)

if __name__ == "__main__":
    main()