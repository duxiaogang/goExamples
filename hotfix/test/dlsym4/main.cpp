#include <cstdio>
#include <cstring>
#include <unistd.h>
#include <thread>
#include <dlfcn.h>
#include <math.h>
#include <set>
#include <vector>

extern "C" {
	extern void ListSymbol1(const char *soPath, const char *name);
	extern void ListSymbol2(const char *soPath, const char *name);
	extern void ListSymbol3(const char *soPath, const char *name);

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

int main(int argc, char *argv[])
{
	XXX();

	ListSymbol("", "XXX");
	ListSymbol1("", "XXX");
	ListSymbol2("", "XXX");
	ListSymbol3("", "XXX");

	return 0;
}

