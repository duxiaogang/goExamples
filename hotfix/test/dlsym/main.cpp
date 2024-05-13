#include <cstdio>
#include <cstring>
#include <unistd.h>
#include <thread>
#include <dlfcn.h>
#include <math.h>
#include <set>

extern "C" {
	void ExeFunc1();
	void ExeFunc2(float x);

	void SO1_CallExeFuncs();
	void* SO1_GetAddr(const char* name);

	void* SO2_GetAddr(const char* name);

	void SO_XXX();
}

void ExeFunc1()
{
	printf("ExeFunc1()\n");
}

void ExeFunc2(float x)
{
	printf("ExeFunc2()\n");
	printf("%f\n", cos(x));
}

void SO_XXX()
{
	printf("exe's SO_XXX()\n");
}

void trySearch(const char *name)
{
	std::set<void*> symSet;

	dlerror();
	void *addr = dlsym(RTLD_DEFAULT, name);
	printf("trySearch, name=%s, addr=%p, dlerror=%s\n", name, addr, dlerror());
	symSet.insert(addr);

	while(true)
	{
		addr = dlsym(RTLD_NEXT, name);
		if (addr!=nullptr && symSet.find(addr)==symSet.end())
		{
			printf("     next, addr=%p, dlerror=%s\n", addr, dlerror());
			symSet.insert(addr);
			continue;
		}
		break;
	}
}

void trySearchFromSO1(const char *name)
{
	void *addr = SO1_GetAddr(name);
	//printf("trySearchFromSO1, name=%s, addr=%p, dlerror=%s\n", name, addr, dlerror());
}

void trySearchFromSO2(const char *name)
{
	void *addr = SO2_GetAddr(name);
	//printf("trySearchFromSO2, name=%s, addr=%p, dlerror=%s\n", name, addr, dlerror());
}

int main(int argc, char *argv[])
{
	ExeFunc1();
	ExeFunc2(1.2);
	SO1_CallExeFuncs();
	SO_XXX();

	printf("==============================================\n");
	printf("RTLD_DEFAULT=%p\n", RTLD_DEFAULT);
	printf("RTLD_NEXT=%p\n", RTLD_NEXT);
	printf("==============================================\n");

	trySearch("cos");
	trySearch("ExeFunc1");
	trySearch("ExeFunc2");
	trySearch("SONotBeCalled");
	trySearch("SO_XXX");

	printf("==============================================\n");
	trySearchFromSO1("cos");
	trySearchFromSO1("ExeFunc1");
	trySearchFromSO1("ExeFunc2");
	trySearchFromSO1("SONotBeCalled");
	trySearchFromSO1("SO_XXX");

	printf("==============================================\n");
	trySearchFromSO2("cos");
	trySearchFromSO2("ExeFunc1");
	trySearchFromSO2("ExeFunc2");
	trySearchFromSO2("SONotBeCalled");
	trySearchFromSO2("SO_XXX");

	return 0;
}

