# -*- coding: utf-8 -*-
"""
Created on Fri Mar  1 22:58:30 2019

@author: bluesky_hust
"""
import math
import random
import sys
from math import sqrt


import numpy

import time
import matplotlib.pyplot as plt

tile = 0

buff = {}
minimum = float("inf")
closest_pair = {}
iCount = 0

def mycmp1(x,y):  #升序排列
    value=0;
    if x>y :
        value=1
    if x<y:
        value=-1
    if x==y :
        value=0
    return value



#分治法-棋盘覆盖问题
# tr表示棋盘的左上角行号，tc棋盘的左上角列号。dr特殊方格行号，dc特殊方格列号
def chessboard(board, size, tr, tc, dr, dc):
    if size <= 1:
        return
    global tile
    tile += 1
    current_tile = tile
    size //= 2
    if dr < tr + size and dc < tc + size: #特殊方格在棋盘左上角
        print("a1:",tile)
        chessboard(board, size, tr, tc, dr, dc)
    else:
        print("a2:",tile)
        board[tr + size - 1][tc + size - 1] = current_tile
        chessboard(board, size, tr, tc, tr + size - 1, tc + size - 1)
    if dr >= tr + size and dc < tc + size:   #特殊方格在棋盘右上角
        print("a3:",tile)
        chessboard(board, size, tr + size, tc, dr, dc)
    else:
        print("a4:",tile)
        board[tr + size][tc + size - 1] = current_tile
        chessboard(board, size, tr + size, tc,
                   tr + size, tc + size - 1)
    if dr < tr + size and dc >= tc + size:  #特殊方格在棋盘左下角
        print("a5:",tile)
        chessboard(board, size, tr, tc + size, dr, dc)
    else:
        print("a6:",tile)
        board[tr + size - 1][tc + size] = current_tile
        chessboard(board, size, tr, tc + size,
                   tr + size - 1, tc + size)
    if dr >= tr + size and dc >= tc + size:   #特殊方格在棋盘右下角
        print("a7:",tile)
        chessboard(board, size, tr + size, tc + size, dr, dc)
    else:
        print("a8:",tile)
        board[tr + size][tc + size] = current_tile
        chessboard(board, size, tr + size, tc + size,
                   tr + size, tc + size)
        
#分治法-棋盘覆盖问题
    

    
def main():
   
    t1=time.time()
    
   
    chessboard_size = 4
    board = [[0 for x in range(chessboard_size)] for y in range(chessboard_size)]
    print('start:',board)
    chessboard(board, chessboard_size, 0, 0, 2, 3)

    board = [[row[i] for row in board] for i in range(len(board[0]))]
    for lst in board:
        print(lst)
    
    
    t2=time.time()
    
    print('time=',(t2-t1))
    
    
if __name__ == "__main__":
    main()