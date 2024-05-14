#include <cstdio>
#include <dlfcn.h>
#include <math.h>
#include <set>

extern "C" {
	void PaddingFunc21()
	{
	}
	void PaddingFunc22()
	{
	}

	void XXX()
	{
		printf("so2's XXX()\n");
	}

	void ListSymbol2(const char *soPath, const char *name)
	{
		printf("======================================= so2's ListSymbol(%s, %s):\n", soPath, name);

		//default
		dlerror();
		void *addr = dlsym(RTLD_DEFAULT, name);
		printf("	default, addr=%p, dlerror=%s\n", addr, dlerror());

		//next
		dlerror();
		addr = dlsym(RTLD_NEXT, name);
		printf("	next, addr=%p, dlerror=%s\n", addr, dlerror());
	}
}
