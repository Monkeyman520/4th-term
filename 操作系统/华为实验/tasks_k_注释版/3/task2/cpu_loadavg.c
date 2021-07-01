#include <linux/module.h>
// 文件类型（file）定义于 include/linux/fs.h
#include <linux/fs.h>

MODULE_LICENSE("GPL");

char tmp_cpu_load[5] = {'\0'};

static int get_loadavg(void)
{
	// file结构代表一个打开的文件（不仅仅限定于设备驱动程序，系统中每个打开的文件在内核空间都有一个对应的file结构），
	// 它由内核在open时创建，并传递给在改文件上进行操作的所有函数，直到最后的close函数，在文件的所有实例都关闭后，
	// 内核会释放这个数据结构。内核源代码中，指向struct file的指针通常被称为file或者filp
	struct file *fp_cpu;
	loff_t pos = 0;//当前读写位置
	char buf_cpu[10];
	/*
	extern struct file *filp_open(const char *, int, umode_t);
	参数说明：
		第一个参数表明要打开或创建文件的名称(包括路径部分)。
		第二个参数文件的打开方式，其取值与标准库中的open相应参数类似，可以取O_CREAT,O_RDWR,O_RDONLY等。
		第三个参数创建文件时使用，设置创建文件的读写权限，其它情况可以设为0
  		该函数返回strcut file*结构指针，供后继函数操作使用，该返回值用IS_ERR()来检验其有效性。
	*/
	fp_cpu = filp_open("/proc/loadavg", O_RDONLY, 0);
	if (IS_ERR(fp_cpu)){
		printk("Failed to open loadavg file!\n");
		return -1;
	}
	// int kernel_read(struct file *file, loff_t offset,
    //                 char *addr, unsigned long count)
	kernel_read(fp_cpu, buf_cpu, sizeof(buf_cpu), &pos);
	// char * strncpy(char *dest, const char *src, size_t n);
	// 【参数说明】dest 为目标字符串指针，src 为源字符串指针。
	// strncpy()会将字符串src前n个字符拷贝到字符串dest。src 和 dest 所指的内存区域不能重叠，且 dest 必须有足够的空间放置n个字符。
	// 不像strcpy()，strncpy()不会向dest追加结束标记'\0'，所以在strncpy()后使用strcat()因找不到‘\0’会有问题；
	// 若想strncpy()在结尾添加"\0"则需n大于src字符串长度
	strncpy(tmp_cpu_load, buf_cpu, 4);
	// extern int filp_close(struct file *, fl_owner_t id);
	// 参数说明：
	// 第一个参数是filp_open返回的file结构体指针
	// 第二个参数基本上都是NULL
	filp_close(fp_cpu, NULL);
	return 0;
}

static int __init cpu_loadavg_init(void)
{
	printk("Start cpu_loadavg!\n");
	if(0 != get_loadavg()){
		printk("Failed to read loadarvg file!\n");
		return -1;
	}
	printk("The cpu loadavg in one minute is: %s\n", tmp_cpu_load);
	return 0;
}

static void __exit cpu_loadavg_exit(void)
{
	printk("Exit cpu_loadavg!\n");
}

module_init(cpu_loadavg_init);
module_exit(cpu_loadavg_exit); 
