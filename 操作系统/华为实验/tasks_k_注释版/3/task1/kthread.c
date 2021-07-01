 //包含了常用的内核函数
#include <linux/kthread.h>
/*包含了对模块的结构定义以及模块的版本控制，
* 任何模块程序的编写都要包含这个头文件*/
#include <linux/module.h>
// 时间延迟或者内核驱动的等待所需要包含的头文件
#include <linux/delay.h>

//告诉内核该模块具有GNU公共许可证
MODULE_LICENSE("GPL");

#define BUF_SIZE 20

/*
 进程是处于执行期的程序以及它所管理的资源（如打开的文件、挂起的信号、进程状态、地址空间等等）的总称。
 注意，程序并不是进程，实际上两个或多个进程不仅有可能执行同一程序，而且还有可能共享地址空间等资源。
 Linux内核通过一个被称为进程描述符的task_struct结构体来管理进程，这个结构体包含了一个进程所需的所有信息。
*/
static struct task_struct *myThread = NULL;

static int print(void *data)
{
	while(!kthread_should_stop()){
		/*printk()函数，该函数是由内核定义的，功能与C库中的
      printf（）类似，它把要打印的信息输出到终端或者系统日志*/
		printk("New kthread is running.");
		// mdelay是忙等待函数，在延迟过程中无法运行其他任务．这个延迟的时间是准确的．是需要等待多少时间就会真正等待多少时间；
		// msleep是休眠函数，它不涉及忙等待．用msleep（200）的时候实际上延迟的时间，大部分时候是要多于200ms，是个不定的时间值．
		msleep(2000);
	}
	return 0;
}

//kthread_init()是模块初始化函数
static int __init kthread_init(void)
{
	printk("Create kernel thread!\n");
	myThread = kthread_run(print, NULL, "new_kthread");
	return 0;
}

//kthread_exit()是模块退出函数
static void __exit kthread_exit(void)
{
	printk("Kill new kthread.\n");
	if(myThread)
		// 停止内核模块的工作
		kthread_stop(myThread);
}


/*是模块编程中最基本也是必需的两个函数
module_init()向内核注册模块，并调用注册做模块的初始化工作的函数
而module_exit()注销模块并注册模块注销时执行的清理函数。
*/
module_init(kthread_init);
module_exit(kthread_exit);
