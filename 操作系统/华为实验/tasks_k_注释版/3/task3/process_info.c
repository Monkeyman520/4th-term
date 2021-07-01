#include <linux/module.h>
// 信号头文件。定义信号符号常量，信号结构以及信号操作函数原型。
#include <linux/sched/signal.h>
// 定义大部分内核API，包括睡眠函数以及各种变量声明,同时也定义了结构体task_struct，只要包含此头文件即可引用当前进程值
#include <linux/sched.h>

MODULE_LICENSE("GPL");

struct task_struct *p;

static int __init process_info_init(void)
{
	printk("Start process_info!\n");
	// 遍历进程
	for_each_process(p){
		/* -1 unrunnable, 0 runnable, >0 stopped */
		if(p->state == 0)
			printk("1)name:%s  2)pid:%d  3)state:%ld\n", p->comm, p->pid, p->state);
	}
	return 0;
}

static void __exit process_info_exit(void)
{
	printk("Exit process_info!\n");
}

module_init(process_info_init);
module_exit(process_info_exit); 
