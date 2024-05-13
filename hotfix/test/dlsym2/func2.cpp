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

	void ListSymbol2(void *handle, const char *name)
	{
		std::set<void*> symSet;

		printf("======================================= so2's ListSymbol(%p, %s):\n", handle, name);

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
