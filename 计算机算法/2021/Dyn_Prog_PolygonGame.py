# -*- coding: utf-8 -*-
"""
Created on Mon Apr 22 23:54:58 2019

@author: bluesky_hust
"""


import time
''''''
v = [-7,4,2,5]
op = ['+','*','*','+']

def m(a,b):
  if b==1:
    return v[a]

  max = float('-inf')
  for i in range( 1,b ):
    if op[ (a+i-1)%4 ]=='+':
      temp =  m( a%4,i ) + m( (a+i)%4, b-i )
    elif op[ (a+i-1)%4 ]=='*':
      temp = m(a % 4, i) * m((a + i) % 4, b - i)
    if max<temp:
      max,temp = temp,max

  return max

for i in range(4):
  for j in range(1,5):
    print( m(i,j))
  print( '\n')
time.sleep(100)