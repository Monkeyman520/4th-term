def main():
    a = eval(input())
    l1 = list(map(int, str(a)))
    l2 = l1
    l2.reverse()
    print(l1,l2)
    if l1 == l2:
        print("回文")
    else:
        print("不是")

    # k1 = a//10**4 % 10
    # k2 = a//10**3 % 10
    # k3 = a//10**2 % 10
    # k4 = a//10**1 % 10
    # k5 = a//10**0 % 10
    # if k1 == k5 and k2 == k4:
    #     print("回文")
    # else:
    #     print("不是")


if __name__ == '__main__':
    main()
