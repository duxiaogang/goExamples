#include <atomic>

extern int i;
extern std::atomic<int> aI;

void func1()
{
	while(aI >= 0)
	{
		if(i != 0)
		{
			break;
		}
	}
}

