#ifndef _TIMER_H_
#define _TIMER_H_

#include <cstdio>
#include <string>
#include <sys/time.h>

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

	static int64_t NowMicroSec() {
		timeval t;
                gettimeofday(&t, 0); 
		return t.tv_sec*1000000+t.tv_usec;
	}
};

#endif

