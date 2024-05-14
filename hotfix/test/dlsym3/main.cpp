#include <cstdio>
#include <cstring>
#include <unistd.h>
#include <thread>
#include <dlfcn.h>
#include <math.h>
#include <set>
#include <vector>

extern "C" {
	void XXX();
	void ListSymbol(const char *soPath, const char *name);
}

void XXX()
{
	printf("exe's XXX()\n");
}

void ListSymbol(const char *soPath, const char *name)
{
	printf("======================================= exe's ListSymbol(%s, %s):\n", soPath, name);

	//default
	dlerror();
	void *addr = dlsym(RTLD_DEFAULT, name);
	printf("	default, addr=%p, dlerror=%s\n", addr, dlerror());

	//next
	dlerror();
	addr = dlsym(RTLD_NEXT, name);
	printf("	next, addr=%p, dlerror=%s\n", addr, dlerror());
}

typedef void (*ListSymbolFunc)(const char *, const char *);

void ListSymbolWrapper(const char *listSymbolFuncName, const char *soPath, const char *name)
{
	dlerror();
	ListSymbolFunc f = (ListSymbolFunc)dlsym(RTLD_DEFAULT, listSymbolFuncName);
	if (f != nullptr)
	{
		f(soPath, name);
	}
}

void* LoadSO(const char *path)
{
	dlerror();
	void* so = dlopen(path, RTLD_NOW | RTLD_GLOBAL);
	if (so == nullptr)
	{
		fprintf(stderr, "dlopen() error, dlerror=%s\n", dlerror());
	}
	return so;
}

int main(int argc, char *argv[])
{
	XXX();

	ListSymbolWrapper("ListSymbol", "", "XXX"); //for main

	printf("load ./libfunc.so\n");
	LoadSO("./libfunc.so");
	ListSymbolWrapper("ListSymbol1", "./libfunc.so", "XXX");

	printf("load ./libfunc2.so\n");
	LoadSO("./libfunc2.so");
	ListSymbolWrapper("ListSymbol2", "./libfunc2.so", "XXX");

	printf("load ./libfunc3.so\n");
	LoadSO("./libfunc3.so");
	ListSymbolWrapper("ListSymbol3", "./libfunc3.so", "XXX");

	//for (int i=0; i<1000*1000; i++)
	//{
	//	ListSymbolWrapper("ListSymbol3", "./libfunc3.so", "XXX");
	//}

	//while(true)
	//{
	//	sleep(1);
	//}

	return 0;
}

