# -*- coding: utf-8 -*-
"""
Created on Thu Apr 25 10:42:06 2019

@author: bluesky_hust
"""

def Get_min_coins(amount_rem):
    coin_combinations = [1,5,10,25,100]
    coin_list = []
    # 从大到小排序
    sorted_coin_combinations = sorted(coin_combinations,reverse=True)
    for coin_val in sorted_coin_combinations:
        coin_count = int(amount_rem/coin_val) # 面值个数
        coin_list += [coin_val, ]* coin_count # 将面值coin_val,张数coin_count的添加到输出列表
        amount_rem -= coin_val * coin_count   # 计算剩余额度
        if amount_rem <= 0.0:                 # 跳出循环条件
            break
    return coin_list

def main():
    amount_rem=46  
    coin_list=Get_min_coins(amount_rem)
    print(coin_list)

if __name__ == "__main__":
    main()