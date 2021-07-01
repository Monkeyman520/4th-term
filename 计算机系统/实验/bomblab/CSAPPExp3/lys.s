0000000000001464 <phase_5>:
    1464:    48 83 ec 18              sub    $0x18,%rsp
    1468:    64 48 8b 04 25 28 00     mov    %fs:0x28,%rax
    146f:    00 00
    1471:    48 89 44 24 08           mov    %rax,0x8(%rsp)
    1476:    31 c0                    xor    %eax,%eax
    1478:    48 8d 4c 24 04           lea    0x4(%rsp),%rcx
    147d:    48 89 e2                 mov    %rsp,%rdx
    1480:    48 8d 35 88 15 00 00     lea    0x1588(%rip),%rsi        # 2a0f <array.3416+0x14f>
    1487:    e8 14 fa ff ff           callq  ea0 <__isoc99_sscanf@plt>
    148c:    83 f8 01                 cmp    $0x1,%eax
    148f:    7e 5a                    jle    14eb <phase_5+0x87>
    1491:    8b 04 24                 mov    (%rsp),%eax
    1494:    83 e0 0f                 and    $0xf,%eax
    1497:    89 04 24                 mov    %eax,(%rsp)
    149a:    83 f8 0f                 cmp    $0xf,%eax
    149d:    74 32                    je     14d1 <phase_5+0x6d>
    149f:    b9 00 00 00 00           mov    $0x0,%ecx
    14a4:    ba 00 00 00 00           mov    $0x0,%edx
    14a9:    48 8d 35 10 14 00 00     lea    0x1410(%rip),%rsi        # 28c0 <array.3416>
    14b0:    83 c2 01                 add    $0x1,%edx
    14b3:    48 98                    cltq  
    14b5:    8b 04 86                 mov    (%rsi,%rax,4),%eax
    14b8:    01 c1                    add    %eax,%ecx
    14ba:    83 f8 0f                 cmp    $0xf,%eax
    14bd:    75 f1                    jne    14b0 <phase_5+0x4c>
    14bf:    c7 04 24 0f 00 00 00     movl   $0xf,(%rsp)
    14c6:    83 fa 0f                 cmp    $0xf,%edx
    14c9:    75 06                    jne    14d1 <phase_5+0x6d>
    14cb:    39 4c 24 04              cmp    %ecx,0x4(%rsp)
    14cf:    74 05                    je     14d6 <phase_5+0x72>
    14d1:    e8 85 03 00 00           callq  185b <explode_bomb>
    14d6:    48 8b 44 24 08           mov    0x8(%rsp),%rax
    14db:    64 48 33 04 25 28 00     xor    %fs:0x28,%rax
    14e2:    00 00
    14e4:    75 0c                    jne    14f2 <phase_5+0x8e>
    14e6:    48 83 c4 18              add    $0x18,%rsp
    14ea:    c3                       retq  
    14eb:    e8 6b 03 00 00           callq  185b <explode_bomb>
    14f0:    eb 9f                    jmp    1491 <phase_5+0x2d>
    14f2:    e8 09 f9 ff ff           callq  e00 <__stack_chk_fail@plt>
