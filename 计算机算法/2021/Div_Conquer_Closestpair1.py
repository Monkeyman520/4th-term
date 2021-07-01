#coding=utf-8
#最近点对问题-分治法1
import math
import random
import matplotlib.pyplot as plt

buff = {}
minimum = float("inf")
closest_pair = {}

def closest(point, n):                        
    X=list(point)
    Y=list(point)
    X.sort()                                          #预处理,按照X轴进行排序 
    
    Y = sort_y(Y)                                     #预处理,按照Y轴进行排序 
    
    plt.xlim(0, 30*n)
    plt.ylim(0, 30*n)
    plt.title("Point Pair")
    for i in range(len(point)):
        plt.plot(point[i][0], point[i][1], 'ro-')
    
    
    min_distance = closest_pair(X, Y, n)
    for i in range(0, len(buff[min_distance])):
        plt.plot(buff[min_distance][i][0][0],buff[min_distance][i][0][1], "bo-")
        plt.plot(buff[min_distance][i][1][0],buff[min_distance][i][1][1], "bo-")
    plt.show()    
    
    print('The Closest Pair is:',buff[min_distance])
      
    print('min_distance=',min_distance)   
        
      

def closest_pair(X, Y, n):
    if n <= 3:                                        #边界条件
        return brute_force(X, n) 
    mid = n//2 
    Y_Left  = []
    Y_Right = [] 
    for p in Y:          
        if p in X[:mid]:
            Y_Left.append(p)    #Y_left中为直线L左边的所有点且其Y轴坐标值依次增大
        else:
            Y_Right.append(p)   #Y_right中为直线L左边的所有点且其Y轴坐标值依次增大
    dis_left  = closest_pair(X[:mid], Y_Left, mid)    #递归处理PL
    dis_right = closest_pair(X[mid:], Y_Right, n-mid) #递归处理PR
    min_dis = min(dis_left, dis_right)                #得到PL和PR中的最小距离
    strip  = [] 
    for (x,y) in Y:                                   
        if abs( x - X[mid][0] ) < min_dis:            #只有L+/-min_dis之间的点才考虑
            strip.append((x,y))
    return min(min_dis, strip_closest(strip, min_dis))

# 处理边界内最近点对
def strip_closest(strip, d):
    min_d = d
    for i,(x,y) in enumerate(strip):
        for j in range(i+1, 8):  # 只需要考虑最多7个点（6+1）
            if i+j < len(strip): # 预防数组越界
                temdis = get_distance(strip[i], strip[j])
                if  temdis < min_d:
                    min_d = temdis
                   
    return min_d                   

# 计算两点之间的欧拉距离   
def get_distance(a,b):
    distance = math.sqrt( math.pow( (a[0]-b[0]), 2) + math.pow((a[1]-b[1]), 2) ) 
    if distance in buff:
        buff[distance].append((a, b))
    else:
        buff[distance] = [(a, b)]
    return distance

# 按照y轴坐标进行排序
def sort_y(tuples):
  return sorted (tuples,key=lambda last : last[-1])

# 当点数小于3时，直接计算最小距离
def brute_force(X, n):
   
    min_d = get_distance(X[0], X[1])
    for i,(x,y) in enumerate(X):
        for j in range(i+1, n):
            if get_distance(X[i], X[j]) < min_d:
                min_d = get_distance(X[i], X[j])
                
               
    return min_d


#最近点对问题-分治法1
    


def main():
    
    #随机生成n个坐标
   
    #point = [(random.randint(0, 30*n), random.randint(0, 30*n)) for i in range(0, n)]
    point=[(0,30),(30,20),(40,180),(50,90),(10,220),(20,110),(60,25),(70,120),(80,150),(40,50),(90,0),(60,240)]
    #print(point)
    closest(point, len(point))
    
if __name__ == "__main__": 
    main()
