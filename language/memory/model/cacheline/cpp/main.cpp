#include <cstdio>
#include <thread>
#include <unistd.h>
#include <atomic>

int64_t i1, i2, i3, i4;

extern void func1(int64_t *pI);

int main(int argc, char *argv[])
{
	std::thread t1(func1, &i1);
	std::thread t2(func1, &i2);
	std::thread t3(func1, &i3);
	std::thread t4(func1, &i4);

	t1.join();
	t2.join();
	t3.join();
	t4.join();

	printf("&i1=%p, &i2=%p, &i3=%p, &i4=%p\n", &i1, &i2, &i3, &i4);
	printf("i1=%lld, i2=%lld, i3=%lld, i4=%lld\n", i1, i2, i3, i4);

	return 0;
}

