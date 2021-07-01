`CSAPP` -深入理解计算机系统实验报告(`Bomblab`)

课 程 名 称：     <u>深入理解计算机系统</u>

实验项目名称：<u>`BombLab`</u>

专 业 班 级：     <u>软件1902</u>     

姓    名：            <u>侯茱元</u>     

学    号：            <u>201926010214</u>

指 导 教 师：      <u>杨科华</u>

完 成 时 间：      <u>2021 年 5 月 10 日</u>

## 简介🎨

`BombLab`是`CS:APP`中对应第三章内容：程序的机器级表示的`lab`。主要内容为提供一个二进制对象文件💣`bomb`，当运行时，它会要求输入六个字符串，如果其中的任何一个不正确，炸弹就会爆炸，输出一行错误信息（不代表我们可以随意让炸弹爆炸），通过反汇编和逆向工程来找到六个正确的字符串来解除自己的炸弹(有一个隐藏炸弹🤭，后续会介绍)。

根据自己完成的 时长和失误的次数来看，还需要更加努力(😔)。遭受非人的折磨后，选择将报告写的欢快一点，若有不合理之处，请联系👨‍💻鄙人进行修改，多谢关照😭。

## 所用工具🛠

* `objdump`-用于反汇编二进制对象文件

* `VS Code`-用于查看反汇编后的结果与文本文件的编写(此处所使用的`Ubuntu`版本为`16.04 -i386` 最后的`Ubuntu` 32位发行版，故支持`VS Code`)

* `gdb`-用于运行时单步调试与查看运行时内存与寄存器信息

## 解题过程🧐

### 开始🙃

由于之前没有接触过类似的逆向工程问题，拿到问题以后第一时间很难马上开始解决。所以先查看我们能看到的文件信息。

目录中提供了一个`bomb.c`文件，文件内容十分简单，有一份非常有趣的`LISENCE`:

> ```text
> /***
> 
> * Dr. Evil’s Insidious Bomb, Version 1.1
> 
> * Copyright 2011, Dr. Evil Incorporated. All rights reserved.
> 
> *
> 
> * LICENSE:
> 
> *
> 
> * Dr. Evil Incorporated (the PERPETRATOR) hereby grants you (the
> 
> * VICTIM) explicit permission to use this bomb (the BOMB). This is a
> 
> * time limited license, which expires on the death of the VICTIM.
> 
> * The PERPETRATOR takes no responsibility for damage, frustration,
> 
> * insanity, bug-eyes, carpal-tunnel syndrome, loss of sleep, or other
> 
> * harm to the VICTIM. Unless the PERPETRATOR wants to take credit,
> 
> * that is. The VICTIM may not distribute this bomb source code to
> 
> * any enemies of the PERPETRATOR. No VICTIM may debug,
> 
> * reverse-engineer, run “strings” on, decompile, decrypt, or use any
> 
> * other technique to gain knowledge of and defuse the BOMB. BOMB
> 
> * proof clothing may not be worn when handling this program. The
> 
> * PERPETRATOR will not apologize for the PERPETRATOR’s poor sense of
> 
> * humor. This license is null and void where the BOMB is prohibited
> 
> * by law.
> 
> ***
> ```

接下来的部分就是`main`函数，从主函数中我们可以看到整个程序的结构与输入方式：可以从标准输入或文件中读取，一行作为一题的解，解出一个问题以后可以进入下一个问题，注意到返回前的一段注释：

> ```
> /* Wow, they got it! But isn’t something… missing? Perhaps
> 
>  * something they overlooked? Mua ha ha ha ha! */
> ```


暗示了我们隐藏问题的存在，除此之外再也没有任何关于这个炸弹的信息。

下面我们使用`objdump`命令将炸弹文件反汇编出来：

> ``` bash
> objdump -D bomb > bomb.s
> ```

然后通过`VS Code`来查看反汇编的结果，`VS Code`有`x86 and x86_64 Assembly`插件可以高亮汇编，看起来会舒服许多。

反汇编出来的代码有近五千行😱，但是因为有符号表的存在，说明保留了调试所需的信息，我们可以通过`gdb`进行单步调试来查看程序的运行过程。

![image-20210514153131037](https://gitee.com/Monkeyman520/MonkeyImgURL/raw/master/img/20210514153139.png)

通过`bomb.c`可以知道，每个小炸弹的编号都为`phase_n`，故可以很快的定位到问题所在。

在使用`gdb` 的时候，我们可以加上`-tui`命令并用`layout asm`命令切换到汇编指令模式，就可以在调试的时候查看对应的汇编代码了。界面如下：

![image-20210514194024589](https://gitee.com/Monkeyman520/MonkeyImgURL/raw/master/img/20210514194026.png)

一直向下查看，我们就可以看到C文件中出现的`initialize_bomb`函数，然后就到了`phase_1`函数，我们可以推测这个函数就是判断是否通过的核心函数。

可以看到地址`0x80489e4`就是`main`函数的地址。

这时候就要用到`gdb`的指令了，在汇编模式下的指令与普通模式有一些不同。我们可以使用`ni`(`next instruction`)和`si`(`step into`)来实现普通模式下的单步向下执行与步入操作。

#### `main`😊

`main` 函数主要进行了函数参数的准备和调用，大致格式都如下：

1. 参数准备
2. 函数调用
3. 返回值判定
4. 错误处理

其中每个系统函数和自订的函数后面都有`<infomation>`进行注解，让理解变得简单了很多

![image-20210514194646316](https://gitee.com/Monkeyman520/MonkeyImgURL/raw/master/img/20210514194646.png)

话不多说，直接进入每个关卡的解决🏎

#### `phase_1`👨‍🚀

关卡的汇编代码如下

```assembly
08048b50 <phase_1>:
 8048b50:	83 ec 1c             	sub    $0x1c,%esp
 8048b53:	c7 44 24 04 dc a1 04 	movl   $0x804a1dc,0x4(%esp)
 8048b5a:	08 
 8048b5b:	8b 44 24 20          	mov    0x20(%esp),%eax
 8048b5f:	89 04 24             	mov    %eax,(%esp)
 8048b62:	e8 ad 04 00 00       	call   8049014 <strings_not_equal>
 8048b67:	85 c0                	test   %eax,%eax
 8048b69:	74 05                	je     8048b70 <phase_1+0x20>
 8048b6b:	e8 b6 05 00 00       	call   8049126 <explode_bomb>
 8048b70:	83 c4 1c             	add    $0x1c,%esp
 8048b73:	c3                   	ret   
```

可以看见 先将一个地址给了esp+4，然后调用`<strings_not_equal>`这个函数，从名字就可以知道，他是判断两个字符串是否相等，然后判断`eax`的值，如果是0就返回，不是炸弹就会爆炸，于是乎，我们选择查看`0x804a1dc`处存放的值

![image-20210514195719613](https://gitee.com/Monkeyman520/MonkeyImgURL/raw/master/img/20210514195719.png)

显而易见，这个字符串就是我们的答案。😁

`For NASA, space is still a high priority`

![image-20210514195902124](https://gitee.com/Monkeyman520/MonkeyImgURL/raw/master/img/20210514195902.png)

#### `phase_2`😏

经过第一关的考验，我知道了需要注意汇编代码中的立即数和跳转，于是开始了第二关，第二关汇编代码如下：

```assembly
08048b74 <phase_2>:
 8048b74:	56                   	push   %esi
 8048b75:	53                   	push   %ebx
 8048b76:	83 ec 34             	sub    $0x34,%esp
 8048b79:	8d 44 24 18          	lea    0x18(%esp),%eax
 8048b7d:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048b81:	8b 44 24 40          	mov    0x40(%esp),%eax
 8048b85:	89 04 24             	mov    %eax,(%esp)
 8048b88:	e8 ce 06 00 00       	call   804925b <read_six_numbers>
 8048b8d:	83 7c 24 18 00       	cmpl   $0x0,0x18(%esp)
 8048b92:	75 07                	jne    8048b9b <phase_2+0x27>
 8048b94:	83 7c 24 1c 01       	cmpl   $0x1,0x1c(%esp)
 8048b99:	74 05                	je     8048ba0 <phase_2+0x2c>
 8048b9b:	e8 86 05 00 00       	call   8049126 <explode_bomb>
 8048ba0:	8d 5c 24 20          	lea    0x20(%esp),%ebx
 8048ba4:	8d 74 24 30          	lea    0x30(%esp),%esi
 8048ba8:	8b 43 f8             	mov    -0x8(%ebx),%eax
 8048bab:	03 43 fc             	add    -0x4(%ebx),%eax
 8048bae:	39 03                	cmp    %eax,(%ebx)
 8048bb0:	74 05                	je     8048bb7 <phase_2+0x43>
 8048bb2:	e8 6f 05 00 00       	call   8049126 <explode_bomb>
 8048bb7:	83 c3 04             	add    $0x4,%ebx
 8048bba:	39 f3                	cmp    %esi,%ebx
 8048bbc:	75 ea                	jne    8048ba8 <phase_2+0x34>
 8048bbe:	83 c4 34             	add    $0x34,%esp
 8048bc1:	5b                   	pop    %ebx
 8048bc2:	5e                   	pop    %esi
 8048bc3:	c3                   	ret    
```

根据观察，调用了函数`<read_six_numbers>`,输入了6个整数，随即判断，如果第一个数不是0，将会爆炸，如果是，判断第二个数是否为1，如果不是，也会爆炸，随后保存`esp+0x20`和`esp+0x30`的两个参数，也就是输入的第3和第6个数，判断如果第三个数等于汇编中的前两个数之和，则将`ebx+0x4`也就是取第四个数，判断是否等于第六个数，不是则跳转回`0x8048ba8`重复执行，不难看出，这个程序的目的是求出斐波那契数列的前六项，故`0 1 1 2 3 5`为答案。😜

![image-20210514201922436](https://gitee.com/Monkeyman520/MonkeyImgURL/raw/master/img/20210514201922.png)

#### `phase_3`😮

第三关看到汇编代码，很明显的有一个特征：

![image-20210514202040511](https://gitee.com/Monkeyman520/MonkeyImgURL/raw/master/img/20210514202040.png)

这是一个跳转表，通过前面的汇编代码，查看了`0x804a3cb`此处的值：

![image-20210514202231613](https://gitee.com/Monkeyman520/MonkeyImgURL/raw/master/img/20210514202231.png)

通过前后的代码和相关信息不难看出，这是`scanf(“%d %d”)`的两个形参，也就意味着，这道题目，我们需要输入两个整数。

![image-20210514202444354](https://gitee.com/Monkeyman520/MonkeyImgURL/raw/master/img/20210514202444.png)

![image-20210514202509032](https://gitee.com/Monkeyman520/MonkeyImgURL/raw/master/img/20210514202509.png)

同时根据后面的约束条件可以知道，输入的第一个参数的值应该在`1~5`之间，而后发现跳转表的跳转地址会根据输入的值的变化而变化，故猜想本题的答案不止一个，于是根据参数要求，可以得到答案：

![image-20210514203714742](https://gitee.com/Monkeyman520/MonkeyImgURL/raw/master/img/20210514203714.png)

由此图可知当输入为1时，跳转表的的跳转地址为`0x8048c07`

可得其中的一个答案为:`1 -243`。🐵

![image-20210514205103666](https://gitee.com/Monkeyman520/MonkeyImgURL/raw/master/img/20210514205103.png)

#### `phase_4`😇

这道题目想做出来不是很难，但是不知道他要干什么，汇编代码如下：

```assembly
08048ceb <phase_4>:
 8048ceb:	83 ec 2c             	sub    $0x2c,%esp
 8048cee:	8d 44 24 1c          	lea    0x1c(%esp),%eax
 8048cf2:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8048cf6:	8d 44 24 18          	lea    0x18(%esp),%eax
 8048cfa:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048cfe:	c7 44 24 04 cb a3 04 	movl   $0x804a3cb,0x4(%esp)
 8048d05:	08 
 8048d06:	8b 44 24 30          	mov    0x30(%esp),%eax
 8048d0a:	89 04 24             	mov    %eax,(%esp)
 8048d0d:	e8 5e fb ff ff       	call   8048870 <__isoc99_sscanf@plt>
 8048d12:	83 f8 02             	cmp    $0x2,%eax
 8048d15:	75 0d                	jne    8048d24 <phase_4+0x39>
 8048d17:	8b 44 24 18          	mov    0x18(%esp),%eax
 8048d1b:	85 c0                	test   %eax,%eax
 8048d1d:	78 05                	js     8048d24 <phase_4+0x39>
 8048d1f:	83 f8 0e             	cmp    $0xe,%eax
 8048d22:	7e 05                	jle    8048d29 <phase_4+0x3e>
 8048d24:	e8 fd 03 00 00       	call   8049126 <explode_bomb>
 8048d29:	c7 44 24 08 0e 00 00 	movl   $0xe,0x8(%esp)
 8048d30:	00 
 8048d31:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 8048d38:	00 
 8048d39:	8b 44 24 18          	mov    0x18(%esp),%eax
 8048d3d:	89 04 24             	mov    %eax,(%esp)
 8048d40:	e8 3d ff ff ff       	call   8048c82 <func4>
 8048d45:	83 f8 0a             	cmp    $0xa,%eax
 8048d48:	75 07                	jne    8048d51 <phase_4+0x66>
 8048d4a:	83 7c 24 1c 0a       	cmpl   $0xa,0x1c(%esp)
 8048d4f:	74 05                	je     8048d56 <phase_4+0x6b>
 8048d51:	e8 d0 03 00 00       	call   8049126 <explode_bomb>
 8048d56:	83 c4 2c             	add    $0x2c,%esp
 8048d59:	c3                   	ret   
```

可以看到其中调用了`func_4`函数,且`func_4`的后两个参数固定为0和14，且第一个参数为0和14之间，于是查看`func_4`的汇编代码，发现他是个递归函数：

```assembly
08048c82 <func4>:
 8048c82:	83 ec 1c             	sub    $0x1c,%esp
 8048c85:	89 5c 24 14          	mov    %ebx,0x14(%esp)
 8048c89:	89 74 24 18          	mov    %esi,0x18(%esp)
 8048c8d:	8b 44 24 20          	mov    0x20(%esp),%eax //c
 8048c91:	8b 54 24 24          	mov    0x24(%esp),%edx //b
 8048c95:	8b 74 24 28          	mov    0x28(%esp),%esi //a
 8048c99:	89 f1                	mov    %esi,%ecx
 8048c9b:	29 d1                	sub    %edx,%ecx //ecx=a-b
 8048c9d:	89 cb                	mov    %ecx,%ebx //ebx=a-b
 8048c9f:	c1 eb 1f             	shr    $0x1f,%ebx 
 8048ca2:	01 d9                	add    %ebx,%ecx 
 8048ca4:	d1 f9                	sar    %ecx //ecx/=2
 8048ca6:	8d 1c 11             	lea    (%ecx,%edx,1),%ebx
 8048ca9:	39 c3                	cmp    %eax,%ebx
 8048cab:	7e 17                	jle    8048cc4 <func4+0x42> 
 8048cad:	8d 4b ff             	lea    -0x1(%ebx),%ecx
 8048cb0:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 8048cb4:	89 54 24 04          	mov    %edx,0x4(%esp)
 8048cb8:	89 04 24             	mov    %eax,(%esp)
 8048cbb:	e8 c2 ff ff ff       	call   8048c82 <func4>
 8048cc0:	01 c3                	add    %eax,%ebx
 8048cc2:	eb 19                	jmp    8048cdd <func4+0x5b>
 8048cc4:	39 c3                	cmp    %eax,%ebx
 8048cc6:	7d 15                	jge    8048cdd <func4+0x5b>
 8048cc8:	89 74 24 08          	mov    %esi,0x8(%esp)
 8048ccc:	8d 53 01             	lea    0x1(%ebx),%edx
 8048ccf:	89 54 24 04          	mov    %edx,0x4(%esp)
 8048cd3:	89 04 24             	mov    %eax,(%esp)
 8048cd6:	e8 a7 ff ff ff       	call   8048c82 <func4>
 8048cdb:	01 c3                	add    %eax,%ebx
 8048cdd:	89 d8                	mov    %ebx,%eax
 8048cdf:	8b 5c 24 14          	mov    0x14(%esp),%ebx
 8048ce3:	8b 74 24 18          	mov    0x18(%esp),%esi
 8048ce7:	83 c4 1c             	add    $0x1c,%esp
 8048cea:	c3   
```

根据汇编代码，将其转成C语言代码：

```C
int func_4(int c, int b, int a)
{
    int tmp1 = a - b;
    if (tmp1 < 0)
    {
        tmp1 += 1;
    }
    tmp1 = tmp1 / 2;
    int tmp2 = tmp1 + b;
    if (tmp2 > c)
    {
        int tmp3 = func_4(c, b, tmp2 - 1);
        tmp2 += tmp3;
        return tmp2;
    }
    else
    {
        if (tmp2 == c)
        {
            return tmp2;
        }
        int tmp3 = func_4(c, tmp2 + 1, a);
        tmp2 += tmp3;
        return tmp2;
    }
}
```

根据汇编中的返回值判断，需要返回值为10

![image-20210514205010283](https://gitee.com/Monkeyman520/MonkeyImgURL/raw/master/img/20210514205010.png)

故可以得出，此题答案为`3  10`   😭

![image-20210514205121583](https://gitee.com/Monkeyman520/MonkeyImgURL/raw/master/img/20210514205121.png)

#### `phase_5`🤯

第五题的重点代码：

```assembly
 8048d80:	b8 00 00 00 00       	mov    $0x0,%eax
 8048d85:	0f be 14 03          	movsbl (%ebx,%eax,1),%edx     //edx=ebx+n*eax 按照符号位扩展后放入edx
 8048d89:	83 e2 0f             	and    $0xf,%edx
 8048d8c:	0f b6 92 58 a2 04 08 	movzbl 0x804a258(%edx),%edx
 8048d93:	88 54 04 15          	mov    %dl,0x15(%esp,%eax,1) //将edx的低八位放入其中
 8048d97:	83 c0 01             	add    $0x1,%eax
 8048d9a:	83 f8 06             	cmp    $0x6,%eax //判断是否等于6 等于就结束循环
 8048d9d:	75 e6                	jne    8048d85 <phase_5+0x2b>
```

根据下面的代码，总算看到了希望🤕：

```assembly
 8048d9f:	c6 44 24 1b 00       	movb   $0x0,0x1b(%esp)
 8048da4:	c7 44 24 04 2e a2 04 	movl   $0x804a22e,0x4(%esp)
 8048dab:	08 
 8048dac:	8d 44 24 15          	lea    0x15(%esp),%eax
 8048db0:	89 04 24             	mov    %eax,(%esp)
 8048db3:	e8 5c 02 00 00       	call   8049014 <strings_not_equal>
 8048db8:	85 c0                	test   %eax,%eax
 8048dba:	74 05                	je     8048dc1 <phase_5+0x67>
```

此处调用了函数`<strings_not_equal>`，故可以很明显的看出，我们需要知道目标字符串：

![image-20210514210029363](https://gitee.com/Monkeyman520/MonkeyImgURL/raw/master/img/20210514210029.png)

再分析上面的代码，原来在这里`eax`起到的是一个索引的作用，所以我也可以知道源头来自

![image-20210514210245945](https://gitee.com/Monkeyman520/MonkeyImgURL/raw/master/img/20210514210245.png)

所以，根据目标字符串`flyers`的索引分别为`9 15 14 5 6 7`。这个索引就是我们输入的字符的低4位，那我们只要找到低4位分别是以上数值的字符就可以了。所以阶段5的（一个）答案为🥳：

```text
ionefg
```

![image-20210514210843451](https://gitee.com/Monkeyman520/MonkeyImgURL/raw/master/img/20210514210843.png)

#### `phase_6`☠

越到后面越能感受到题目的凶残，第六题也让我难受到了极点，先读入6个数字，然后部分汇编代码如下🥺：

```assembly
 8048df5:	be 00 00 00 00       	mov    $0x0,%esi
 8048dfa:	8b 44 b4 10          	mov    0x10(%esp,%esi,4),%eax
 8048dfe:	83 e8 01             	sub    $0x1,%eax
 8048e01:	83 f8 05             	cmp    $0x5,%eax
 8048e04:	76 05                	jbe    8048e0b <phase_6+0x2f>
 8048e06:	e8 1b 03 00 00       	call   8049126 <explode_bomb>
 8048e0b:	83 c6 01             	add    $0x1,%esi
 8048e0e:	83 fe 06             	cmp    $0x6,%esi
 8048e11:	74 33                	je     8048e46 <phase_6+0x6a>
 8048e13:	89 f3                	mov    %esi,%ebx
 8048e15:	8b 44 9c 10          	mov    0x10(%esp,%ebx,4),%eax
 8048e19:	39 44 b4 0c          	cmp    %eax,0xc(%esp,%esi,4)
 8048e1d:	75 05                	jne    8048e24 <phase_6+0x48>
 8048e1f:	e8 02 03 00 00       	call   8049126 <explode_bomb>
 8048e24:	83 c3 01             	add    $0x1,%ebx
 8048e27:	83 fb 05             	cmp    $0x5,%ebx
 8048e2a:	7e e9                	jle    8048e15 <phase_6+0x39>
 8048e2c:	eb cc                	jmp    8048dfa <phase_6+0x1e>
 8048e2e:	8b 52 08             	mov    0x8(%edx),%edx
```

前面是一系列的赋值操作，第3行将`eax`减1，`eax`中的值是`esp+50`位置存放的值。第3、4两行将减一以后的值与5进行比较，小于等于5则跳过引爆代码。也就是说`eax`中存放的第一个数必须小于等于6.

之前将`esi`置为0，第7行中将`esi`的值增加1，下一行与6进行比较，如果相等则跳入下一个阶段。

第10行中把`esi`中的值复制给了`ebx`，下一步又赋给了`eax`，接下来的一行`mov`将`esp+eax*4`中的值（也就是第`eax+1`个读入的`int`值）给了`eax`。

下一步将`eax`中的值与`ebp`地址指向的值进行比较，如果不相同则跳过引爆代码。说明这两个值需要不同，再接下来将`ebx`中的值加1，再与5进行比较，如果小于等于5则跳到第13行中，更新`eax`的值，再去从栈中取下一个新的`int`值和`ebp`中的进行比较。到这里我们可以看出，从13行到20行相当于一个内循环，从`esi`开始，到5结束，不断地取栈中的值与`ebp`的值比较，也就是要求`ebp`之后的值需要与`ebp`不同。

第17、18行则是外循环，它更新了`eax`的值，令`eax`指向下一个`int`值。跳到第3行用`eax`的值更新`ebp`的值，也就是把比较的对象向后移一个。同样要求该值小于等于5。后面再进行内循环比较之后的值。

可以明白这段代码的作用：限制读入的6个数必须小于等于6并且互不相等

后面的代码基本就看不懂了💔，但是，这串代码为解决这道题埋下了伏笔😊😙：

```assembly
 8048e4d:	8b 4c 9c 10          	mov    0x10(%esp,%ebx,4),%ecx
 8048e51:	b8 01 00 00 00       	mov    $0x1,%eax
 8048e56:	ba 3c c1 04 08       	mov    $0x804c13c,%edx
 8048e5b:	83 f9 01             	cmp    $0x1,%ecx
 8048e5e:	7f ce                	jg     8048e2e <phase_6+0x52>
```

我们查看运行时内存可知：

![image-20210514213041742](https://gitee.com/Monkeyman520/MonkeyImgURL/raw/master/img/20210514213041.png)

通过名称不难发现这是一串链表，于是，观察后面可知🤩

```assembly
 8048e89:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 8048e90:	be 05 00 00 00       	mov    $0x5,%esi
 8048e95:	8b 43 08             	mov    0x8(%ebx),%eax// node=node->next
 8048e98:	8b 10                	mov    (%eax),%edx
 8048e9a:	39 13                	cmp    %edx,(%ebx)
 8048e9c:	7d 05                	jge    8048ea3 <phase_6+0xc7>
 8048e9e:	e8 83 02 00 00       	call   8049126 <explode_bomb>
 8048ea3:	8b 5b 08             	mov    0x8(%ebx),%ebx
 8048ea6:	83 ee 01             	sub    $0x1,%esi
 8048ea9:	75 ea                	jne    8048e95 <phase_6+0xb9>
 8048eab:	83 c4 44             	add    $0x44,%esp
 8048eae:	5b                   	pop    %ebx
 8048eaf:	5e                   	pop    %esi
 8048eb0:	c3                   	ret    
```

他在进行循环，检查输入的序列，如果发现前面编号节点的值大于后面编号节点的值，则继续，否则爆炸，同时当序列检查完成，返回，所以可以大致猜想这个小题的作用是输入一个序列，保证输入序列所代表的节点数据升序排列，于是开始验证，先打印每个节点的值🧐😅：

![image-20210514214945447](https://gitee.com/Monkeyman520/MonkeyImgURL/raw/master/img/20210514214945.png)

根据节点值排序序列为：

`1 2 4 5 6 3`

验证得🤗：

![image-20210514215334612](https://gitee.com/Monkeyman520/MonkeyImgURL/raw/master/img/20210514215334.png)

成功完成🤒🤮。

#### `secret_phase`😱

```assembly
08048f02 <secret_phase>:
 8048f02:	53                   	push   %ebx
 8048f03:	83 ec 18             	sub    $0x18,%esp
 8048f06:	e8 42 02 00 00       	call   804914d <read_line>
 8048f0b:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
 8048f12:	00 
 8048f13:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 8048f1a:	00 
 8048f1b:	89 04 24             	mov    %eax,(%esp)
 8048f1e:	e8 bd f9 ff ff       	call   80488e0 <strtol@plt>
 8048f23:	89 c3                	mov    %eax,%ebx
 8048f25:	8d 40 ff             	lea    -0x1(%eax),%eax
 8048f28:	3d e8 03 00 00       	cmp    $0x3e8,%eax
 8048f2d:	76 05                	jbe    8048f34 <secret_phase+0x32>
 8048f2f:	e8 f2 01 00 00       	call   8049126 <explode_bomb>
 8048f34:	89 5c 24 04          	mov    %ebx,0x4(%esp) 
 8048f38:	c7 04 24 88 c0 04 08 	movl   $0x804c088,(%esp) //36
 8048f3f:	e8 6d ff ff ff       	call   8048eb1 <fun7>
 8048f44:	83 f8 04             	cmp    $0x4,%eax
 8048f47:	74 05                	je     8048f4e <secret_phase+0x4c>
 8048f49:	e8 d8 01 00 00       	call   8049126 <explode_bomb>
 8048f4e:	c7 04 24 08 a2 04 08 	movl   $0x804a208,(%esp) //win
 8048f55:	e8 a6 f8 ff ff       	call   8048800 <puts@plt>
 8048f5a:	e8 4c 03 00 00       	call   80492ab <phase_defused>
 8048f5f:	83 c4 18             	add    $0x18,%esp
 8048f62:	5b                   	pop    %ebx
 8048f63:	c3                   	ret 
```

通过查看汇编代码，我们首先需要知道怎么进入秘密关卡，但是上面的汇编代码并没有提示，这里可以用一个简单的方法，直接在反汇编代码中搜索`secret_phase`的入口地址，很快就可以发现在每个阶段的`phase_x`之后都有一行`phase_defused`，所以我们开始分析此函数：

```assembly
080492ab <phase_defused>:
 80492ab:	81 ec 8c 00 00 00    	sub    $0x8c,%esp
 80492b1:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 80492b7:	89 44 24 7c          	mov    %eax,0x7c(%esp)
 80492bb:	31 c0                	xor    %eax,%eax
 80492bd:	83 3d cc c3 04 08 06 	cmpl   $0x6,0x804c3cc
 80492c4:	75 72                	jne    8049338 <phase_defused+0x8d>
 80492c6:	8d 44 24 2c          	lea    0x2c(%esp),%eax
 80492ca:	89 44 24 10          	mov    %eax,0x10(%esp)
 80492ce:	8d 44 24 28          	lea    0x28(%esp),%eax
 80492d2:	89 44 24 0c          	mov    %eax,0xc(%esp)
 80492d6:	8d 44 24 24          	lea    0x24(%esp),%eax
 80492da:	89 44 24 08          	mov    %eax,0x8(%esp)
 80492de:	c7 44 24 04 d1 a3 04 	movl   $0x804a3d1,0x4(%esp)
 80492e5:	08 
 80492e6:	c7 04 24 d0 c4 04 08 	movl   $0x804c4d0,(%esp)
 80492ed:	e8 7e f5 ff ff       	call   8048870 <__isoc99_sscanf@plt>
 80492f2:	83 f8 03             	cmp    $0x3,%eax
 80492f5:	75 35                	jne    804932c <phase_defused+0x81>
 80492f7:	c7 44 24 04 da a3 04 	movl   $0x804a3da,0x4(%esp)
 80492fe:	08 
 80492ff:	8d 44 24 2c          	lea    0x2c(%esp),%eax
 8049303:	89 04 24             	mov    %eax,(%esp)
 8049306:	e8 09 fd ff ff       	call   8049014 <strings_not_equal>
 804930b:	85 c0                	test   %eax,%eax
 804930d:	75 1d                	jne    804932c <phase_defused+0x81>
 804930f:	c7 04 24 a0 a2 04 08 	movl   $0x804a2a0,(%esp)
 8049316:	e8 e5 f4 ff ff       	call   8048800 <puts@plt>
 804931b:	c7 04 24 c8 a2 04 08 	movl   $0x804a2c8,(%esp)
 8049322:	e8 d9 f4 ff ff       	call   8048800 <puts@plt>
 8049327:	e8 d6 fb ff ff       	call   8048f02 <secret_phase>
 804932c:	c7 04 24 00 a3 04 08 	movl   $0x804a300,(%esp)
 8049333:	e8 c8 f4 ff ff       	call   8048800 <puts@plt>
 8049338:	8b 44 24 7c          	mov    0x7c(%esp),%eax
 804933c:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 8049343:	74 05                	je     804934a <phase_defused+0x9f>
 8049345:	e8 86 f4 ff ff       	call   80487d0 <__stack_chk_fail@plt>
 804934a:	81 c4 8c 00 00 00    	add    $0x8c,%esp
 8049350:	c3                   	ret    
```

通过查看其中几个立即数的值，可以发现：

![image-20210514220405348](https://gitee.com/Monkeyman520/MonkeyImgURL/raw/master/img/20210514220405.png)

输入的`sscanf`函数在输入两个整数时，在后面加上一个字符串就可进入秘密关卡，根据之前的破解，我们很容易发现，只有第三关和第四关输入的是两个整数，于是，尝试一下😑😥：

![image-20210514220704370](https://gitee.com/Monkeyman520/MonkeyImgURL/raw/master/img/20210514220704.png)

![image-20210514220711310](https://gitee.com/Monkeyman520/MonkeyImgURL/raw/master/img/20210514220711.png)

可以发现，第四关的答案后输入`DrEvil ` 即可在最后进入隐藏关卡，随后通过汇编代码，发现只需输入一个整数，使得`func7`函数的返回值是4，于是开始分析`func7`函数🙀：

```assembly
08048eb1 <fun7>:
 8048eb1:	53                   	push   %ebx
 8048eb2:	83 ec 18             	sub    $0x18,%esp
 8048eb5:	8b 54 24 20          	mov    0x20(%esp),%edx
 8048eb9:	8b 4c 24 24          	mov    0x24(%esp),%ecx
 8048ebd:	85 d2                	test   %edx,%edx
 8048ebf:	74 37                	je     8048ef8 <fun7+0x47>
 8048ec1:	8b 1a                	mov    (%edx),%ebx
 8048ec3:	39 cb                	cmp    %ecx,%ebx
 8048ec5:	7e 13                	jle    8048eda <fun7+0x29>
 8048ec7:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 8048ecb:	8b 42 04             	mov    0x4(%edx),%eax
 8048ece:	89 04 24             	mov    %eax,(%esp)
 8048ed1:	e8 db ff ff ff       	call   8048eb1 <fun7>
 8048ed6:	01 c0                	add    %eax,%eax
 8048ed8:	eb 23                	jmp    8048efd <fun7+0x4c>
 8048eda:	b8 00 00 00 00       	mov    $0x0,%eax
 8048edf:	39 cb                	cmp    %ecx,%ebx
 8048ee1:	74 1a                	je     8048efd <fun7+0x4c>
 8048ee3:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 8048ee7:	8b 42 08             	mov    0x8(%ed  x),%eax
 8048eea:	89 04 24             	mov    %eax,(%esp)
 8048eed:	e8 bf ff ff ff       	call   8048eb1 <fun7>
 8048ef2:	8d 44 00 01          	lea    0x1(%eax,%eax,1),%eax
 8048ef6:	eb 05                	jmp    8048efd <fun7+0x4c>
 8048ef8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8048efd:	83 c4 18             	add    $0x18,%esp
 8048f00:	5b                   	pop    %ebx
 8048f01:	c3 
```

由于传入的参数是一个地址，于是我们查看该地址的值：

![image-20210514221309347](https://gitee.com/Monkeyman520/MonkeyImgURL/raw/master/img/20210514221309.png)

可以看到，这和之前的很相似，都是一个节点，但是这次的节点有两个子节点，于是查看更多信息😪😯：

![image-20210514221627816](https://gitee.com/Monkeyman520/MonkeyImgURL/raw/master/img/20210514221627.png)

仔细观察可以发现这是一个二叉树的结构，每个节点第1个8字节存放数据，第2个8字节存放左子树地址，第3个8字节存放右子树位置。并且命令也有规律，`nab`，`a`代表层数，`b`代表从左至右第b个节点，于是可以得到下图🤓：

![img](https://gitee.com/Monkeyman520/MonkeyImgURL/raw/master/img/20210514221819.png)

总结上面的过程：`ebx`指向一个树的节点，令`ebx`节点的值与我们读入的值进行比较。🍧🍧

- 如果两者相等：返回0
- 如果前者大于后者：`ebx`移至左子树，返回`2 * eax`
- 如果后者大于前者：`ebx`移至右子树，返回`2 * eax + 1`

想要返回4，则返回的逆序列是`0 1 2 4` 

返回条件：左 左 右

从根节点开始，按照返回条件可得：符合题意得答案是`7`。🍕🍕🍕

## 总结😎

至此，本次实验就稀里糊涂得完成了，虽然还是有些不明白，但是都是自己认真思考得出的解决方案，还是有很多不完善得地方，路漫漫其修远兮，真难啊，但是收获也很大，学会了好多东西，看汇编得能力也提升了不少，但是还不够，需要继续努力！🛫