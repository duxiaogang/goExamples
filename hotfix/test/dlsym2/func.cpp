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

	void ListSymbol1(void *handle, const char *name)
	{
		std::set<void*> symSet;

		printf("======================================= so's ListSymbol(%p, %s):\n", handle, name);

		dlerror();
		void *addr = dlsym(handle, name);
		printf("	addr=%p, dlerror=%s\n", addr, dlerror());
		if (addr == nullptr)
		{
			//printf("	symbol not found, dlerror=%s\n", dlerror());
			return;
		}
		symSet.insert(addr);

		while(true)
		{
			dlerror();
			addr = dlsym(RTLD_NEXT, name);
			printf("	next, addr=%p, dlerror=%s\n", addr, dlerror());
			if (addr!=nullptr && symSet.find(addr)==symSet.end())
			{
				//printf("	addr=%p, dlerror=%s\n", addr, dlerror());
				symSet.insert(addr);
				continue;
			}
			break;
		}
	}
}
