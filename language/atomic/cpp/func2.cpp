#include <atomic>

extern int i;
extern std::atomic<int> aI;
extern int alwaysNotZero;

void func2()
{
	i = 1;

	aI = i;

	while(alwaysNotZero != 0) {};

	i = 2;
}

