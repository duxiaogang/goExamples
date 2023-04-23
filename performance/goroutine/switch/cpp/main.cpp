#include <cstdio>
#include <thread>
#include <unistd.h>
#include <mutex>
#include <condition_variable>

#include "timer.h"

const int maxValue	= 10 * 1000;
const int threadCount	= 1000;

std::mutex mtx;
std::condition_variable cv;
int curValue = 0;

void tFunc(int i)
{
	while(true) {
		std::unique_lock<std::mutex> lck(mtx);
		while (curValue<maxValue && curValue%threadCount!=i) {
			cv.wait(lck);
		}
		if (curValue >= maxValue) {
			cv.notify_all();
			break;
		}
		curValue++;
		//printf("curValue=%d\n", curValue);
		cv.notify_all();
	}
}

int main(int argc, char *argv[])
{
	Timer _("");

	std::thread threads[threadCount];
	for (int i=0; i<threadCount; i++) {
		threads[i] = std::thread(tFunc, i);
	}
	for (int i=0; i<threadCount; i++) {
		threads[i].join();
	}

	return 0;
}
