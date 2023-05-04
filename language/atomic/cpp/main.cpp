#include <cstdio>
#include <thread>
#include <unistd.h>
#include <atomic>

int i = 0;
std::atomic<int> aI(0);
int alwaysNotZero = 1;

extern void func1();
extern void func2();

int main(int argc, char *argv[])
{
	aI++; //lock

	aI = 2; //lock(xchgl)

	aI.store(3); //lock(xchgl)
 
	i = aI; //nolock

	i++;

	i = aI.load(); //nolock

	//std::thread t1(func1);
	//std::thread t2(func2);

	//t1.join();
	//t2.join();

	return 0;
}

