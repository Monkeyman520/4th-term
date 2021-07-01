# -*- coding: utf-8 -*-
"""
Created on Mon Feb  3 00:25:47 2020

@author: bluesky_hust
"""


def build_max_heap(to_build_list):
    """建立一个堆"""
    # 自底向上建堆
    for i in range(len(to_build_list)//2 - 1, -1, -1):
        max_heap(to_build_list, len(to_build_list), i)
 
def max_heap(to_adjust_list, heap_size, index):
    """调整列表中的元素以保证以index为根的堆是一个最大堆"""
    
    # 将当前结点与其左右子节点比较，将较大的结点与当前结点交换，然后递归地调整子树
    left_child = 2 * index + 1
    right_child = left_child + 1
    if left_child < heap_size and to_adjust_list[left_child] > to_adjust_list[index]:
        largest = left_child
    else:
        largest = index
    if right_child < heap_size and to_adjust_list[right_child] > to_adjust_list[largest]:
        largest = right_child
    if largest != index:
        to_adjust_list[index], to_adjust_list[largest] = \
        to_adjust_list[largest], to_adjust_list[index]
        max_heap(to_adjust_list, heap_size, largest)

        
def heap_sort(to_sort_list):
    """堆排序"""
    
    # 先将列表调整为堆
    build_max_heap(to_sort_list)
    heap_size = len(to_sort_list)
    # 调整后列表的第一个元素就是这个列表中最大的元素，将其与最后一个元素交换，然后将剩余的列表再调整为最大堆
    for i in range(len(to_sort_list) - 1, 0, -1):
        to_sort_list[i], to_sort_list[0] = to_sort_list[0], to_sort_list[i]
        heap_size -= 1
        max_heap(to_sort_list, heap_size, 0)

def main():
    to_sort_list = [4, 1, 3, 2, 16, 9, 10, 14, 8, 7]
   
    build_max_heap(to_sort_list)
    print(to_sort_list)

if __name__ == '__main__':
    import cProfile
    cProfile.run("main()")
    