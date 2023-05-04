#include <atomic>

void func1(int64_t *pI)
{
	for (int64_t i=0; i<4*1000*1000*1000L; i++)
	{
		(*pI)++;
	}
}

