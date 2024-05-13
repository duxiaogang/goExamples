#include <cstdio>
#include <dlfcn.h>
#include <math.h>
#include <set>

extern "C" {
	extern void ExeFunc1();
	extern void ExeFunc2(float x);

	void SO1_CallExeFuncs()
	{
		ExeFunc1();
		//ExeFunc2(2);
	}

	void SONotBeCalled()
	{
		printf("cos(8)=%f\n", cos(8));
	}

	void* SO1_GetAddr(const char* name)
	{
		//dlerror();
		//return dlsym(RTLD_DEFAULT, name);

		std::set<void*> symSet;

		dlerror();
		void *addr = dlsym(RTLD_DEFAULT, name);
		printf("trySearch, name=%s, addr=%p, dlerror=%s\n", name, addr, dlerror());
		symSet.insert(addr);

		while(true)
		{
			void *addr = dlsym(RTLD_NEXT, name);
			if (addr!=nullptr && symSet.find(addr)==symSet.end())
			{
				printf("     next, addr=%p, dlerror=%s\n", addr, dlerror());
				symSet.insert(addr);
				continue;
			}
			break;
		}

		return nullptr;
	}

	void SO_XXX()
	{
		printf("so's SO_XXX()\n");
	}
}
