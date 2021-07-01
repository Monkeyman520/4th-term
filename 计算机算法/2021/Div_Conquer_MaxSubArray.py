# -*- coding: utf-8 -*-
"""
Created on Fri Mar  1 22:58:30 2019

@author: bluesky_hust
"""

import sys

import time


def mycmp1(x,y):  #升序排列
    value=0;
    if x>y :
        value=1
    if x<y:
        value=-1
    if x==y :
        value=0
    return value



#分治法-最大子段和问题
def MaxCrossSubArray(A,low,mid,high):
    LeftMaxSum=A[mid]
    leftSum=A[mid]
    leftIndex=mid
    for i in range(mid-1,low-1,-1):
        leftSum=leftSum+A[i]
        if leftSum>LeftMaxSum:
            LeftMaxSum=leftSum
            leftIndex=i
    rightMaxSum=0
    rightSum=0
    rightIndex=mid
    for i in range(mid+1,high+1):
        rightSum+=A[i]
        if rightSum>rightMaxSum:
            rightMaxSum=rightSum
            rightIndex=i
    MaxSum=LeftMaxSum+rightMaxSum
    return (leftIndex,rightIndex,MaxSum)

def MaxSubArray1(A,low,high):
    if low==high:
        return (A[low],low,high)
    else:
        mid=(low+high)//2
        
        (left_low,left_hight,left_sum) = MaxSubArray1(A,low,mid)

        (right_low,right_hight,right_sum) = MaxSubArray1(A,mid+1,high)
        
        (leftIndex,rightIndex,MaxSum) = MaxCrossSubArray(A,low,mid,high)
        
        if left_sum >= right_low and left_sum >= MaxSum :
            return (left_low,left_hight,left_sum)
        elif right_sum >= left_sum and right_sum >= MaxSum :
            return (right_low,right_hight,right_sum)
        else :
            return  (leftIndex,rightIndex,MaxSum) 

"""
def MaxSubArray2(A,low,high):
    if low==high:
        return (A[low],low,high)
    mid=(low+high)//2
    Left=MaxSubArray2(A,low,mid)
    (leftIndex,rightIndex,Cross)=MaxCrossSubArray(A,low,mid,high)
    Right=MaxSubArray2(A,mid+1,high)
    List=[Left,Cross,Right]
    result=sorted(List,key = lambda list : list[0],reverse=True)
    return result[0]
"""

def MaxSum(myList):
    MaxSubArray1(myList,0,len(myList)-1)
    
    (left,right,MaxSum)  = MaxSubArray1(myList,0,len(myList)-1)
      
    print( "最大子序列为：myList[%d:%d+1]="%(left,right), myList[left:right+1], end='\t' )
    print( "sum=%d"%MaxSum ) 

#分治法-最大子段和问题


#最大子段和问题-暴力法
def max_subarray_brute_force(array1):
    
    '目前找到的最大子序列 array[left,right+1]，注意right+1....python'
    
    MAX_NUM = sys.maxsize
    array = array1[:]            # 复制
    max_sum = -1.0 * MAX_NUM     # 目前已经找出的最大子序列的和，MAX_NUM是一个指定的很大的数   
    left = 0                     # 最大子序列的左侧起点 
    right = 0                    # 最大子序列的右侧终点
    
    #寻找最大子序列
    for i in range(len(array)):            # i是子序列的左侧的起点
        sum_ij = 0
        for j in range(i,len(array)):      # j是子序列的右侧的终点，逐步从i向数组结尾扩散
            sum_ij += array[j]
            if sum_ij > max_sum:           # 找到了一个总和大于原来的max_sum的子序列
                left = i 
                right = j 
                max_sum = sum_ij
                
    #输出结果 
    print( "最大子序列为：array[%d:%d+1]="%(left,right), array[left:right+1], end='\t' )
    print( "sum=%d"%sum(array[left:right+1]) ) 

#最大子段和问题-暴力法



    
def main():
   
    t1=time.time()
    
    """
    myList=[13,-3,-25,20,-3,-16,-23,18,20,-7,12,-5,-22,15,-4,7]
    max_subarray_brute_force(myList)
    """
    
    myList=[13,-3,-25,20,-3,-16,-23,18,20,-7,12,-5,-22,15,-4,7]

    MaxSum(myList)
    t2=time.time()
    
    print('time=',(t2-t1))
    
    
if __name__ == "__main__":
    main()