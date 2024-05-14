#include <cstdio>
#include <dlfcn.h>
#include <math.h>
#include <set>

extern "C" {
	void PaddingFunc31()
	{
	}
	void PaddingFunc32()
	{
	}
	void PaddingFunc33()
	{
	}

	void XXX()
	{
		printf("so3's XXX()\n");
	}

	void ListSymbol3(const char *soPath, const char *name)
	{
		printf("======================================= so3's ListSymbol(%s, %s):\n", soPath, name);

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
