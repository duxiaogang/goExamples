#include <cstdio>
#include <dlfcn.h>
#include <math.h>
#include <set>

extern "C" {
	void PaddingFunc1()
	{
	}

	void XXX()
	{
		printf("so's XXX()\n");
	}

	void ListSymbol1(const char *soPath, const char *name)
	{
		printf("======================================= so's ListSymbol(%s, %s):\n", soPath, name);

		//default
		dlerror();
		void *addr = dlsym(RTLD_DEFAULT, name);
		printf("	default, addr=%p, dlerror=%s\n", addr, dlerror());

		//next
		dlerror();
		addr = dlsym(RTLD_NEXT, name);
		printf("	next, addr=%p, dlerror=%s\n", addr, dlerror());

		//local
		dlerror();
		void* so = dlopen(soPath, RTLD_NOW | RTLD_GLOBAL);
		if (so != nullptr)
		{
			dlerror();
			void *addr = dlsym(so, name);
			printf("	local, addr=%p, dlerror=%s\n", addr, dlerror());
			dlclose(so);
		}
	}
}
