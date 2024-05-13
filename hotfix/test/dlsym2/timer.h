#ifndef _TIMER_H_
#define _TIMER_H_

#include <cstdio>
#include <string>
#include <sys/time.h>
#include <sys/types.h>

class Timer
{
	std::string _desc;
	timeval _begin;

public:
        Timer(const char *desc): _desc(desc)
        {
                gettimeofday(&_begin, 0); 
        }
        ~Timer()
        {
                timeval tv; 
                gettimeofday(&tv, 0); 
                int64_t l = (tv.tv_sec-_begin.tv_sec)*1000000+(tv.tv_usec-_begin.tv_usec);
		printf("Timer(%s), elapsed=%ld MICRO SECONDS\n", _desc.c_str(), l);
        }
};

#endif

