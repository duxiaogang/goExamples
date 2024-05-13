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
}

void XXX()
{
	printf("exe's XXX()\n");
}

void _ListSymbol(void *handle, const char *name)
{
	std::set<void*> symSet;

	printf("======================================= exe's ListSymbol(%p, %s):\n", handle, name);

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

typedef void (*ListSymbolFunc)(void *handle, const char *);

void ListSymbol(std::vector<void*> handles, const char *name)
{
	for (auto h=handles.begin(); h!=handles.end(); h++)
	{
		_ListSymbol(*h, name);
	}

	dlerror();
	ListSymbolFunc f = (ListSymbolFunc)dlsym(RTLD_DEFAULT, "ListSymbol1");
	if (f != nullptr)
	{
		for (auto h=handles.begin(); h!=handles.end(); h++)
		{
			f(*h, name);
		}
	}

	f = (ListSymbolFunc)dlsym(RTLD_DEFAULT, "ListSymbol2");
	if (f != nullptr)
	{
		for (auto h=handles.begin(); h!=handles.end(); h++)
		{
			f(*h, name);
		}
	}

	f = (ListSymbolFunc)dlsym(RTLD_DEFAULT, "ListSymbol3");
	if (f != nullptr)
	{
		for (auto h=handles.begin(); h!=handles.end(); h++)
		{
			f(*h, name);
		}
	}
}

void* LoadSO(const char *path)
{
	dlerror();
	void* so = dlopen(path, RTLD_NOW | RTLD_GLOBAL);
	//void* so = dlopen(path, 258);
	if (so == nullptr)
	{
		fprintf(stderr, "dlopen() error, dlerror=%s\n", dlerror());
	}
	return so;
}

int main(int argc, char *argv[])
{
	std::vector<void*> handles;
	handles.push_back(RTLD_DEFAULT);

	XXX();

	ListSymbol(handles, "XXX");

	printf("load ./libfunc.so\n");
	auto so = LoadSO("./libfunc.so");
	handles.push_back(so);
	ListSymbol(handles, "XXX");

	printf("load ./libfunc2.so\n");
	so = LoadSO("./libfunc2.so");
	handles.push_back(so);
	ListSymbol(handles, "XXX");

	printf("load ./libfunc3.so\n");
	so = LoadSO("./libfunc3.so");
	handles.push_back(so);
	ListSymbol(handles, "XXX");

	//while(true)
	//{
	//	sleep(1);
	//}

	return 0;
}

